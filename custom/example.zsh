# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
#
zstyle ':completion:*' special-dirs true
alias remove-docker-nones="docker rmi -f $(docker images | grep '^<none>' | awk '{print $3}')"

removeImages() {
    docker rmi -f $(docker images | grep $1 | awk '{print $3}')
}
alias remove-docker-images=removeImages
    
alias tabula='docker run -it --rm -v $PWD:/usr/src/app -w /usr/src/app/ vitorarins/tabula-extractor tabula'
