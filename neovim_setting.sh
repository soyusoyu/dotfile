cp ~/.bash_profile ~/.bash_profile.neovim_setting.sh.bak
cp ~/.zshrc ~/..zshrc.neovim_setting.sh.bak
# echo 'export XDG_CONFIG_HOME=$HOME/.config' >> ~/.bash_profile
# source ~/.bash_profile
mkdir -p ${HOME}/.config

ln -snfv ${HOME}/dotfile/config/nvim ${HOME}/.config/nvim
ln -snfv ${HOME}/dotfile/starship.toml ${HOME}/.config/starship.toml
ln -snfv ${HOME}/dotfile/.zshrc ${HOME}/.zshrc
ln -snfv ${HOME}/dotfile/.zsh_func ${HOME}/.zsh_func
ln -snfv ${HOME}/dotfile/.asdfrc ${HOME}/.asdfrc
mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json.initfile.bak
ln -snfv ${HOME}/dotfile/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
# windowsの場合は%APPDATA%\Code\User\settings.jsonにある
# "C:\Users\xxx\AppData\Roaming\Code\User\settings.json"
# lnを利用するとwindowsのvscodeが処理できないので、cpを利用する
# cp ${HOME}/dotfile/vscode/settings.json /mnt/c/Users/xxx/AppData/Roaming/Code/User/settings.json

