/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# wsl
# (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/xxx/.zshrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# sudo apt-get install build-essential
# sudo apt-get update -y
# sudo apt-get install zsh -y
# sudo apt-get install zlib1g-dev -y
# sudo apt-get install -y libssl-dev
# chsh -s /bin/zsh
# brew install gcc

# - Spotlightのショートカットを無効にする
# - 入力リソースのショートカットを無効にする
# - キーリピートを速,リピート認識を短にする
brew install --cask iterm2
brew install git
brew install gh
#  - ssh-keygen
#  - https://github.com/settings/ssh
#  - ssh -T git@github.com
brew install neovim
 #  - ruby-lsp
 #  - typescript-language-server
 
brew install --cask alfred
brew install google-chrome
brew install google-japanese-ime

brew install starship

brew install zinit
# To activate zinit, add the following to your ~/.zshrc:
#   source /usr/local/opt/zinit/zinit.zsh
# zinit light zsh-users/zsh-autosuggestions
# zinit light zsh-users/zsh-completions
# zinit light zdharma/fast-syntax-highlighting
# zinit light romkatv/powerlevel10k

brew install asdf
# e.g. ~/.profile or ~/.zshrc:
#   . /usr/local/opt/asdf/libexec/asdf.sh
# e.g. ~/.config/fish/config.fish
#   source /usr/local/opt/asdf/libexec/asdf.fish
# Restart your terminal for the settings to take effect.
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
# asdf install ruby 3.0.2
# asdf install nodejs 18.18.0
# asdf install golang 1.21.0
# asdf install rust 1.73.0
# asdf global
# asdf global ruby 3.0.2
# asdf global nodejs 20.8.0

brew install ripgrep
brew install bat
brew install fd
brew install fzf
$(brew --prefix)/opt/fzf/install
# 設定場所 ~/.ctags.d/elixir.ctags
brew install universal-ctags
# ctags -R --languages=Ruby,JavaScript,TypeScript --extras=+q --fields=+iaS --typescript-kinds=+p -o ./tags .
# pathが認識されなければ、下記の結果をPATHに追加する
# brew list universal-ctags | grep 'bin/ctags'
# echo 'export PATH=$PATH:/usr/local/Cellar/universal-ctags/p6.0.20230924.0/bin' >> ~/.zshrc
# brew install fig


brew install --cask docker
# dockerのinstallに失敗したら、下記で消す
# brew uninstall --force --cask docker
# brew autoremove

brew install git-delta
brew install --cask slack
brew install --cask pgadmin4
brew install --cask intellij-idea

brew install --cask visual-studio-code

code --install-extension streetsidesoftware.code-spell-checker
# https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim
code --install-extension asvetliakov.vscode-neovim
code --install-extension jaydenlin.ctags-support

# javascript
code --install-extension dsznajder.es7-react-js-snippets
# https://marketplace.visualstudio.com/items?itemName=planbcoding.vscode-react-refactor
code --install-extension planbcoding.vscode-react-refactor
# https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
code --install-extension dbaeumer.vscode-eslint
# https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode
code --install-extension esbenp.prettier-vscode
# https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces
code --install-extension shardulm94.trailing-spaces
# ruby

# https://marketplace.visualstudio.com/items?itemName=kaiwood.endwise
code --install-extension kaiwood.endwise

# https://marketplace.visualstudio.com/items?itemName=rubocop.vscode-rubocop
# code -- install-extension rubocop.vscode-rubocop
# https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-extensions-pack
code --install-extension Shopify.ruby-extensions-pack
# 下記は非推奨
# https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby
# code --install-extension rebornix.Ruby
# go
# https://marketplace.visualstudio.com/items?itemName=golang.Go
code --install-extension golang.Go
# rust
# https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer
code --install-extension rust-lang.rust-analyzer
# https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb
code --install-extension vadimcn.vscode-lldb

# windowsのみ
# https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.remote-wsl

# brew install fish
#   sudo vim /etc/shells
#   # fish shellを追加
#   /usr/local/bin/fish
#   chsh -s /usr/local/bin/fish

# brew install python3
# brew install  node
# npm install -g neovim

# brew install nginx


# brew cask install sequel-pro

# brew install mysql
# docker mysql
# mysql -hlocalhost -u root -P 33060
# brew cask install rdm

# brew install msgpack
# for php
# brew install gcc re2c libmcrypt autoconf automake libiconv
# brew install bison
# brew link --force bison
# brew install openssl
# brew install libxml2
# brew link --force openssl
# brew link --force libxml2
# # jpeg
# brew install jpeg
# png
# brew install libpng
# icu4c
# brew instal icu4c
# brew link --force icu4c
#
# brew cask reinstall xquartz

# git clone https://github.com/anyenv/anyenv ~/.anyenv
# anyenv install --init
# # git clone https://github.com/riywo/anyenv ~/.anyenv
# add bash_profile
# if [ -d $HOME/.anyenv ] ; then
#     export PATH="$HOME/.anyenv/bin:$PATH"
#     eval "$(anyenv init -)"
#     # tmux対応
#     for D in `\ls $HOME/.anyenv/envs`
#     do
#         export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
#     done
# fi
# source ~/.bash_profile
#
# RUBY_VER="2.6.1"
# # NODE_VER="v8.11.1"
# NODE_VER="10.16.0"
# PYTHON27_VER="2.7.14"
# PYTHON26_VER="2.6.9"
# PYTHON3_VER="3.6.5"
# PHP5_VER="5.6.36"
# PHP7_VER="7.0.16"
#
# ELIXIR_VER="1.5.3"
# ELIXIR_VER_16="1.6.1"
# ANYENV_HOME=$HOME/.anyenv
# ANYENV_ENV=$ANYENV_HOME/envs
#
# mkdir -p ${ANYENV_HOME}/plugins
# git clone https://github.com/znz/anyenv-update.git ${ANYENV_HOME}/plugins/anyenv-update
#
# anyenv install rbenv
# source ~/.bash_profile
# rbenv install ${RUBY_VER}
# rbenv global ${RUBY_VER}
# rbenv rehash
# gem update --system; gem install --no-ri --no-rdoc rails;
# gem install neovim
# # 確認
# # gem environment
#
# # .bundle/config
# # ---
# # BUNDLE_PATH: "vendor/bundle"
#
# anyenv install nodenv
# source ~/.bash_profile
# nodenv install ${NODE_VER}
# nodenv global ${NODE_VER}
# ndenv rehash
# brew install yarn
# yarn init
# yarn add --dev typescript tslint tslint-microsoft-contrib jest ts-jest @types/jest
# yarn add webpack ts-loader --dev
# yarn --dev add typings webpack
# #yarn add --dev react react-dom jquery marked
#
# npm install -g neovim
# npm install -g javascript-typescript-langserver
# npm install -g eslint
# npm install -g tslint
#
# anyenv install pyenv
# source ~/.bash_profile
# pyenv install ${PYTHON26_VER}
# pyenv install ${PYTHON27_VER}
# pyenv install ${PYTHON3_VER}
# pyenv rehash
#
# pyenv global ${PYTHON3_VER} ${PYTHON27_VER}
# pip3 install --upgrade pip
# pip3 install neovim
#
# # phoenix_
# mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
#

# cobol
# brew install gnu-cobol


# rails コマンド
# bundle install --path vendor/bundle
# bundle install --path vendor/bundle
#docker build ./ -t rails_sample
#docker run -i -t --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" rails_sample /bin/bash
