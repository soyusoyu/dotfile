cp ~/.bash_profile ~/.bash_profile.neovim_setting.sh.bak
cp ~/.zshrc ~/..zshrc.neovim_setting.sh.bak
# echo 'export XDG_CONFIG_HOME=$HOME/.config' >> ~/.bash_profile
# source ~/.bash_profile
mkdir -p ${HOME}/.config

ln -snfv ${HOME}/dotfile/config/nvim ${HOME}/.config/nvim
ln -snfv ${HOME}/dotfile/starship.toml ${HOME}/.config/starship.toml
ln -snfv ${HOME}/dotfile/.zshrc ${HOME}/.zshrc
