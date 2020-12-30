function! GitBranch()
  let g:git_branch = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGitBranch()
    if exists("g:git_branch")
        return '  '.g:git_branch.' '
    else
        return ''
    endif
endfunction

autocmd BufEnter * call GitBranch()

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGitBranch()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
