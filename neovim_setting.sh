cp ~/.bash_profile ~/.bash_profile.neovim_setting.sh.bak
# echo 'export XDG_CONFIG_HOME=$HOME/.config' >> ~/.bash_profile
source ~/.bash_profile
mkdir -p ${HOME}/.config
# ln -snfv ${HOME}/.vim ${HOME}/.config/nvim
# ln -snfv ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim
ln -snfv ${HOME}/dotfile/.vim ${HOME}/.config/nvim
ln -snfv ${HOME}/dotfile/.vimrc ${HOME}/.config/nvim/init.vim

