eval "$(fnm env)"

export CLICOLOR=1
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export LC_CTYPE="UTF-8"

# homebrew
export HOMEBREW_GITHUB_API_TOKEN=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
export HOMEBREW_GITHUB_PACKAGES_TOKEN=$HOMEBREW_GITHUB_API_TOKEN

# load IT-provided staging environment credentials and PIP_EXTRA_INDEX_URL
export ARTIFACTORY_USERNAME=leo.hsieh@doordash.com
export ARTIFACTORY_PASSWORD=AKCp8jR7GEHy7NvxXtAhdsvYG9eRVj5mRhRYjWbTjqWdhDjCppy45vo1UP4p7EYSScAisUgV7

# Environment variables for android repository
export artifactoryUser=${ARTIFACTORY_USERNAME}
export artifactoryPassword=${ARTIFACTORY_PASSWORD}

export ARTIFACTORY_URL=https://${ARTIFACTORY_USERNAME/@/%40}:${ARTIFACTORY_PASSWORD}@ddartifacts.jfrog.io/ddartifacts/api/pypi/pypi-local/simple/
export PIP_EXTRA_INDEX_URL=${ARTIFACTORY_URL}

# Helm
export PATH="/usr/local/opt/helm@2/bin:$PATH"
