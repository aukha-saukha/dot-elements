################################################################################
# Development
################################################################################
#-------------------------------------------------------------------------------
# Git
#-------------------------------------------------------------------------------
# Git
# Usage: g <command_name>
alias g="git"

# Git add
alias gad="git add"

# Git checkout
# usage: gch #file_name# OR gch #branch_name#
alias gch="git checkout"

# Git clone
# usage: gcl #repo_name#
alias gcl="git clone"

# Git commit
# usage: gcm "#commit_message#" #file_name#
alias gcm="git commit -m"

# Git diff
# usage: gdf #file_name#
alias gdf="git diff"

# Git fetch
alias gft="git fetch"

# Git pull
alias gpl="git pull"

# Git push
# usage: gps #branch_name#
alias gpo="git push origin"

# Git push
alias gps="git push"

# Git stash list
alias gsl="git stash list"

# Git stash save
# usage: gss #stash_name#
alias gss="git stash save"

# Git status
alias gst="git status"



#-------------------------------------------------------------------------------
# Yarn (Package manager)
#-------------------------------------------------------------------------------
# Yarn
# Usage: y <command_name>
alias y="yarn"

# Add a package.
# yarn add [package-name]
alias ya="yarn add"

# Add a package as a dev dependency.
# Usage: yarn add --dev [package-name]
alias yad="yarn add --dev"

# Install all dependencies for a project.
# Usage: yarn install
alias yi="yarn install"

# Run a defined package script.
# Usage: yarn run [script] [-- <args>]
alias yr="yarn run"

# Run a custom (user defined) "start" script for dev.
# Usage: yarn run start:dev
alias yrsd="yarn run start:dev"

# Run a custom (user defined) "start" script for production.
# Usage: yarn run start:prod
alias yrsp="yarn run start:prod"

# Remove a package.
# Usage: yarn remove <package...>
alias yrm="yarn remove"

# Upgrade interactive
alias yui="yarn upgrade-interactive"



################################################################################
# Frequently used commands
################################################################################
# Prompt to the standard error output before coping a file that would overwrite
# an existing file.
alias cp="cp -i"

# list directory contents with options -
# -a : list all entries except for . and ..
# -F : slash (`/') immediately after each pathname that is a directory,
#      an asterisk (`*') after each that is executable, an at sign (`@') after
#      each symbolic link
alias la="ls -aF"

# list directory contents with options -
# -A : list all entries except for . and ..
# -F : slash (`/') immediately after each pathname that is a directory,
#      an asterisk (`*') after each that is executable, an at sign (`@') after
#      each symbolic link
# -G : Enable colorized output.
# -h : human readable unit format i.e. Byte, Kilobyte, Megabyte, Gigabyte etc.
# -l : list in long format
alias l="ls -AFGhl"

# list directory contents with options -
# -A : list all entries except for . and ..
# -F : slash (`/') immediately after each pathname that is a directory,
#      an asterisk (`*') after each that is executable, an at sign (`@') after
#      each symbolic link
# -G : Enable colorized output.
# -h : human readable unit format i.e. Byte, Kilobyte, Megabyte, Gigabyte etc.
# -l : list in long format
# -S : sort files by size
# Please don't make mistake of changing alias "lsz" to "ls"
alias lsz="ls -AFGhlS"

# list directory contents with options -
# -A : list all entries except for . and ..
# -F : slash (`/') immediately after each pathname that is a directory,
#      an asterisk (`*') after each that is executable, an at sign (`@') after
#      each symbolic link
# -G : Enable colorized output.
# -h : human readable unit format i.e. Byte, Kilobyte, Megabyte, Gigabyte etc.
# -l : list in long format
# -t : sort by time modified (most recently modified first)
alias lt="ls -AFGhlt"

# list only files in a directory with options -
# -A : list all entries except for . and ..
# -F : slash (`/') immediately after each pathname that is a directory,
#      an asterisk (`*') after each that is executable, an at sign (`@') after
#      each symbolic link
# -G : Enable colorized output.
# -h : human readable unit format i.e. Byte, Kilobyte, Megabyte, Gigabyte etc.
# -l : list in long format
alias lf="ls -AFGhl | egrep -v '^d'" # only files

# list only (child) directoris in a directory contents with options -
# -A : list all entries except for . and ..
# -F : slash (`/') immediately after each pathname that is a directory,
#      an asterisk (`*') after each that is executable, an at sign (`@') after
#      each symbolic link
# -G : Enable colorized output.
# -h : human readable unit format i.e. Byte, Kilobyte, Megabyte, Gigabyte etc.
# -l : list in long format
# -S : sort (child) directories by size
alias ldir="ls -AFGhlS | egrep '^d'"  # only dirs

# make (create) directory with options:
# -p : create intermediate directories if required
# -v : verbose when creating directories listing them as they are created
alias mkdir="mkdir -p -v"

# Prompt to the standard error output before moving a file that would overwrite
# an existing file.
alias mv="mv -i"

# run "remove" command with options:
# -r : hierarchy rooted files as well as directories
# -f : remove the files without prompting for confirmation
alias rmc="rm -rf"



################################################################################
# Navigation
################################################################################
#-------------------------------------------------------------------------------
# Frequently used files
#-------------------------------------------------------------------------------
# bash aliases
alias als="vi ~/.bash_aliases"

# vimrc
alias vmr="vi ~/.vimrc"


#-------------------------------------------------------------------------------
# Frequently used directories
#-------------------------------------------------------------------------------
# Home directory
alias ~="cd ~"

# Vault
alias v="cd $V"

# Dot elements
alias de="cd $V/Workspace/dot-elements"
alias def="cd $V/Workspace/dot-elements/.files"

# Specific directories
# Workspace
alias rcc="cd $V/Workspace/rcc/src"
alias reb="cd $V/Workspace/reb/src"
alias rms="cd $V/Workspace/rms/src"
alias tmp="cd $V/Workspace/xyz/tmp"

alias wrk="cd $V/Workspace"
alias wrks="cd $V/Workspace/scripts"
alias wrkx="cd $V/Workspace/xyz"



#-------------------------------------------------------------------------------
# Move down in the directory tree
#-------------------------------------------------------------------------------
alias .,="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."



################################################################################
# Tools/Utilities
################################################################################
#-------------------------------------------------------------------------------
# Tmux
#-------------------------------------------------------------------------------
# Attach to an already running session by name
alias ta="tmux attach -t"

# Kill the session by name
alias tk="tmux kill-session -t"

# List all running tmux sessions
alias tl="tmux list-sessions"

# Start a new tmux session by name
alias ts="tmux new -s"

# Switch to an already running session by name
alias tsw="tmux switch -t"


#-------------------------------------------------------------------------------
# Vim
#-------------------------------------------------------------------------------
# vim diff
alias vdf="vimdiff -c 'set diffopt+=iwhite' -O"

# view
alias vw="view"


#-------------------------------------------------------------------------------
# Youtube downloader
#-------------------------------------------------------------------------------
alias ytdl="youtube-dl -f bestvideo+bestaudio"
