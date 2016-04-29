# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
zstyle ':completion:*' special-dirs true
alias remove-docker-nones="docker rmi -f $(docker images | grep '^<none>' | awk '{print $3}')"

removeImages() {
    docker rmi -f $(docker images | grep $1 | awk '{print $3}')
}
alias remove-docker-images=removeImages
    
alias tabula='docker run -it --rm -v $PWD:/usr/src/app -w /usr/src/app/ vitorarins/tabula-extractor tabula'