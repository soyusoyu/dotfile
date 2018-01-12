/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

brew install python3

brew install bash-completion

brew tap caskroom/cask

brew cask install vimr

brew cask install firefox

brew cask install google-chrome

brew cask install visual-studio-code

brew install the_silver_searcher

brew install postgresql
brew install mysql

brew install ctags

brew install fzf
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install

brew cask install intellij-idea

brew cask install docker
source ~/.bashrc

git clone https://github.com/riywo/anyenv ~/.anyenv
add bash_profile
if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    # tmux対応
    for D in `\ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done
fi
source ~/.bash_profile

RUBY_VER="2.4.3"
NODE_VER="v8.9.4"
PYTHON2_VER="2.7.14"
PYTHON3_VER="3.6.4"

ELIXIR_VER="1.5.3"
ANYENV_HOME=$HOME/.anyenv
ANYENV_ENV=$ANYENV_HOME/envs

mkdir -p ${ANYENV_HOME}/plugins
git clone https://github.com/znz/anyenv-update.git ${ANYENV_HOME}/plugins/anyenv-update

anyenv install rbenv
source ~/.bash_profile
rbenv install ${RUBY_VER}
rbenv global ${RUBY_VER}
rbenv rehash
gem update --system; gem install --no-ri --no-rdoc rails;

anyenv install ndenv
source ~/.bash_profile
ndenv install ${NODE_VER}
ndenv global ${NODE_VER}
ndenv rehash

anyenv install pyenv
source ~/.bash_profile
pyenv install ${PYTHON2_VER}
pyenv install ${PYTHON3_VER}
pyenv rehash


anyenv install erlenv
brew cask reinstall java
brew install unixodbc wxmac fop
brew install kerl
# kerl list releases
kerl build 20.2 20.2
kerl install 20.2 ~/.anyenv/envs/erlenv/releases/20.2
. /Users/soyu/.anyenv/envs/erlenv/releases/20.2/activate

anyenv install exenv
# exenv install -l
exenv install ${ELIXIR_VER}
exenv global ${ELIXIR_VER}
exenv rehash

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/bundle

#docker build ./ -t rails_sample
#docker run -i -t --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" rails_sample /bin/bash
