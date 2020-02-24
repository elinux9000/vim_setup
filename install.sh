which vim
if [ $? -ne 0 ]
	then echo "Vim is not installed."
	exit
fi
cp cscope_maps.vim ~/
cp vimrc ~/.vimrc
mkdir -p ~/.vim/colors
cp -r vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
gnome-terminal-colors-solarized-master/install.sh
