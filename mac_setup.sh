/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

brew install python2
brew install python3

brew install nginx

brew install bash-completion

brew tap caskroom/cask

brew cask install vimr
brew install httpie
brew install httpry

brew cask install firefox

brew cask install google-chrome

brew cask install visual-studio-code

brew install the_silver_searcher

brew install postgresql
brew install mysql
# docker mysql
# mysql -hlocalhost -u root -P 33060
brew cask install rdm

# brew install ctags

# 設定場所 ~/.ctags.d/elixir.ctags
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

brew install fzf
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install

brew cask install intellij-idea

brew cask install docker

# for php
brew install gcc re2c libmcrypt autoconf automake libiconv
brew install bison
brew link --force bison
brew install openssl
brew install libxml2
brew link --force openssl
brew link --force libxml2
# jpeg
brew install jpeg
# png
brew install libpng
# icu4c
brew instal icu4c
brew link --force icu4c


# fuelphp start
# curl http://fuelphp.com/files/download/34 -o fuelphp-1.7.3.zip
curl https://fuelphp.com:443/files/download/34 -o fuelphp-1.7.3.zip
unzip fuelphp-1.7.3.zip
rm fuelphp-1.7.3.zip
mv fuelphp-1.7.3 www
cd www
php oil refine install
# Error - date_default_timezone_get(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in COREPATH/classes/fuel.php on line 162
# ↓#
# app/config/config.php add
#	'default_timezone'   => 'Asia/Tokyo',
php oil server
# fuelphp end

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

RUBY_VER="2.5.1"
NODE_VER="v8.11.1"
PYTHON27_VER="2.7.14"
PYTHON26_VER="2.6.9"
PYTHON3_VER="3.6.5"
PHP5_VER="5.6.36"
PHP7_VER="7.0.16"

ELIXIR_VER="1.5.3"
ELIXIR_VER_16="1.6.1"
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
brew install yarn
yarn init
yarn add --dev typescript tslint tslint-microsoft-contrib jest ts-jest @types/jest
yarn add webpack ts-loader --dev
yarn --dev add typings webpack
#yarn add --dev react react-dom jquery marked

npm install -g neovim
npm install -g javascript-typescript-langserver
npm install -g eslint
npm install -g tslint

anyenv install pyenv
source ~/.bash_profile
pyenv install ${PYTHON26_VER}
pyenv install ${PYTHON27_VER}
pyenv install ${PYTHON3_VER}
pyenv rehash

pyenv global ${PYTHON3_VER} ${PYTHON27_VER}
pip3 install --upgrade pip
pip3 install neovim
python2 -m pip -V
python2 -m pip install -U pip
python2 -m pip install neovim


anyenv install erlenv
brew cask reinstall java
brew install unixodbc wxmac fop
brew install kerl
# kerl list releases
kerl build 20.2 20.2
kerl install 20.2 ~/.anyenv/envs/erlenv/releases/20.2
erlenv global 20.2
erlenv rehash

anyenv install exenv
# exenv install -l
exenv install ${ELIXIR_VER}
exenv global ${ELIXIR_VER}
exenv rehash
exenv install ${ELIXIR_VER_16}
exenv global ${ELIXIR_VER_16}
exenv rehash

mix local.hex --force
mix local.rebar --force
npm install -g brunch

# phoenix_
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/bundle


brew tap caskroom/fonts
brew cask install font-source-han-code-jp

wget https://gist.githubusercontent.com/luan/6362811/raw/bfdf372168a5d5b97402a70f080f150218fe5044/Hybrid.itermcolors
git clone https://github.com/w0ng/vim-hybrid
mkdir -p ~/.vim/colors
mv vim-hybrid ~/.vim/colors

# rust
brew install rust

# cobol
brew install gnu-cobol


# php
# brew install bison@2.7
# echo 'export PATH="/usr/local/opt/bison@2.7/bin:$PATH"' >> ~/.bash_profile
anyenv install phpenv
source ~/.bash_profile
phpenv install ${PHP5_VER}
phpenv install ${PHP7_VER}
phpenv global ${PHP5_VER}
phpenv  rehash


# rails コマンド
# bundle install --path vendor/bundle
# bundle install --path vendor/bundle
#docker build ./ -t rails_sample
#docker run -i -t --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" rails_sample /bin/bash
