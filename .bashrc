export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export NODE_ENV=development
export GOPATH=$HOME/code/go
export KAFKA_PATH=/Applications/kafka_2.10-0.8.2.1/bin
export RUSTBIN=$HOME/.cargo/bin
export PGBIN=/Applications/Postgres.app/Contents/Versions/latest/bin
export EDITOR=nvim
REL_NODE_PATH=./node_modules/.bin

export PATH=$GIT_PATH:$PATH:$GOPATH::$KAFKA_PATH:$RUSTBIN:$REL_NODE_PATH:$PGBIN
echo "$USER"

for f in \
    "/usr/local/etc/bash_completion.d/git-prompt.sh"  \
    "/usr/local/etc/bash_completion.d/git-completion.bash" \
    "/Users/$USER/code/psql-service-completion/psql-config-completion.bash" \
    "/Users/$USER/code/psql-service-completion/psql-service-completion.bash" \
    "/Users/$USER/code/google-cloud-sdk/path.bash.inc" \
    "/Users/$USER/code/google-cloud-sdk/completion.bash.inc"; do
    if [ -f $f ]; then
        echo "sourcing $f"
        source $f
    fi
done

# For frontend build
ulimit -S -n 4096

GIT_PS1_SHOWCOLORHINTS=true
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

felog () { sudo bunyan -p '*' --color -l trace | less -R; }

