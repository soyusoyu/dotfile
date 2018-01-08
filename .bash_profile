# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

# PATH=/usr/local/Cellar/vim/8.0.0022/bin/:$PATH
#
export PATH
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
# eval "$(pyenv virtualenv-init -)"

export XDG_CONFIG_HOME=$HOME/.config


if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    # tmux対応
    for D in `\ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done
fi

