#!/usr/bin/env bash

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi


export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export NODE_ENV=development
export GOPATH=$HOME/code/go
export KAFKA_PATH=/Applications/kafka_2.10-0.8.2.1/bin
export RUSTBIN=$HOME/.cargo/bin
export PGBIN=/Applications/Postgres.app/Contents/Versions/latest/bin
REL_NODE_PATH=./node_modules/.bin

export PATH=$GIT_PATH:$PATH:$GOPATH::$KAFKA_PATH:$RUSTBIN:$REL_NODE_PATH:$PGBIN

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# For frontend build
ulimit -S -n 4096

# The next line updates PATH for the Google Cloud SDK.
source '/Users/nathanj/code/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/nathanj/code/google-cloud-sdk/completion.bash.inc'

GIT_PS1_SHOWCOLORHINTS=true
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

pushd ~/code/porch

