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

if which plenv > /dev/null; then eval "$(plenv init -)"; fi
