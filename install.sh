which vim
if [ $? -ne 0 ]
	then echo "Vim is not installed."
	echo "sudo apt-get -y install vim (hit enter to install n to quit)?"
	read resp
	if [ $resp = "n" ] 
	then
		exit
	else
		echo "Installing vim"
		sudo apt-get -y install vim
	fi
fi

#Check if bashrc has vim alias
grep -q "alias vi=\"vim\"" ~/.bashrc 
if [ $? -ne 0 ] 
	then echo "Can't find alias vi=\"vim\" in bashrc.  Add it (enter y to add)?"
	read add
	if [ $add=="y" ] 
		then echo "alias vi=\"vim\"" >> ~/.bashrc
	fi
fi
	


cp cscope_maps.vim ~/
cp vimrc ~/.vimrc
mkdir -p ~/.vim/colors
cp -r vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
gnome-terminal-colors-solarized-master/install.sh
