---
name: r
description: Only when the user types /r. Opens a Herdr right pane, runs a Codex review of a PR there, addresses the findings, commits and pushes, then closes the pane.
disable-model-invocation: true
---

Args: optional PR number or URL. With none, use the PR for the current branch.

1. **Guard.** `test "${HERDR_ENV:-}" = 1`. If it fails, say you aren't running inside Herdr and stop.

2. **Resolve the PR and get onto it.**
   - `gh pr view <arg> --json number,url,baseRefName,headRefName`
   - If the current branch isn't `headRefName`: when `git status --porcelain` is non-empty, stop and tell the user (never stash). Otherwise run `gh pr checkout <number>`.
   - `git fetch origin <baseRefName>`, then `git pull --ff-only`.

3. **Open the right pane.** Save the pane ID; it is the only pane you ever close.

   ```bash
   PANE=$(herdr pane split --current --direction right --cwd "$PWD" --no-focus | jq -r .result.pane.pane_id)
   OUT=$(mktemp -t codex-review-<number>)
   ```

4. **Run Codex there.** Don't pass a custom prompt: `codex review` reviews the local checkout against `--base`.

   ```bash
   herdr pane run "$PANE" "codex review --base origin/<baseRefName> 2>&1 | tee $OUT; echo \"R_DONE_\${pipestatus[1]}\""
   herdr pane wait-output "$PANE" --regex 'R_DONE_[0-9]+' --timeout 540000
   ```
   - The typed command contains `${pipestatus[1]}`, not a number, so the regex only matches real output.
   - On `timeout`, run the same `wait-output` again. Never re-run the review.
   - `R_DONE_<non-zero>`, or an `$OUT` that is empty or holds only errors: report the failure, go to step 6, and stop.

5. **Address the feedback.** Read `$OUT` in full.
   - Check each finding against the code before acting on it. Skip false positives, each with a one-line reason.
   - Fix the real findings. Then, after your last edit, run the repo's gates as its CLAUDE.md says (plaza: `npm run lint && npm run check` for each touched app, plus targeted tests only).
   - Only if files changed: commit (`fix: address codex review` plus a short list of the findings fixed), then `git push`. Never force-push.
   - Post nothing to the PR.

6. **Close the pane.** Run `herdr pane close "$PANE"` on every exit path after step 3, including failures and reviews with no findings. Never close `--current` or the focused pane.

7. **Report.** Give the PR URL, the findings fixed, the findings skipped (with reasons), the commit SHA (or "no changes"), and any gate that failed or didn't run.
