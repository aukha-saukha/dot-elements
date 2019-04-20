################################################################################
# Custom bash functions
################################################################################
#-------------------------------------------------------------------------------
# This function can be used to jump to a directory, and list all it's contents.
#-------------------------------------------------------------------------------
function cdl() {
    cd $1; ls -la;
}


#-------------------------------------------------------------------------------
# This function can be used to extract a compressed file.
#-------------------------------------------------------------------------------
function extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       tar xvjf $1    ;;
            *.rar)       rar x $1       ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "don't know how to extract '$1'." ;;
        esac
    else
        echo "\"$1\" doesn't seem to be a valid file."
    fi
}


#-------------------------------------------------------------------------------
# This function creates (a) new dir(s) and jump to the last (bottom most)
# directory.
#-------------------------------------------------------------------------------
function mkdircd () {
    mkdir -p "$@" && eval cd "\"\$$#\"";
}


#-------------------------------------------------------------------------------
# This function is used to add git branch name to command line prompt if the
# user is in a directory that contains a git repository.
#-------------------------------------------------------------------------------
function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
