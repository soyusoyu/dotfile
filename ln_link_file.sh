
cd 
mkdir org_dot_files
mv .vimrc ./org_dot_files
mv .bashrc ./org_dot_files
mv .bash_profile ./org_dot_files
ln -sf ~/dotfile/.vimrc ~/.vimrc
ln -sf ~/dotfile/.vim ~/.vim
ln -sf ~/dotfile/.bash_profile ~/.bash_profile
ln -sf ~/dotfile/.bashrc ~/.bashrc
