#!/bin/bash

if [[ -d "export PATH=$PATH:~/Documents/fancy_tools/bin" ]]; then 
	echo "ce PATH existe deja"
else
	echo "source ~/Documents/fancy_tools/.aliases">>~/.bashrc
	echo "source ~/Documents/fancy_tools/fancy_functions.sh">>~/.bashrc
	echo "export PATH=$PATH:~/Documents/fancy_tools/bin">>~/.bashrc
	cp -r ~/Documents/fancy_tools/bin  ~
	echo "export PATH=$PATH:~/bin">>~/.bashrc
	if [[ -e ~/src ]]; then
		cp -r ~/Documents/fancy_tools/install.sh ~/src
		echo "export PATH=$PATH:~/src">>~/.bashrc
	else 
		mkdir ~/src
		cp -r ~/Documents/fancy_tools/install.sh ~/src
		echo "export PATH=$PATH:~/src">>~/.bashrc
	fi
	cp -r ~/Documents/fancy_tools/bin/updateFancyTools ~/bin
fi