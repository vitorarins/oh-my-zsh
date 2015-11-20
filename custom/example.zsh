# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
zstyle ':completion:*' special-dirs true
alias remove-docker-nones='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
