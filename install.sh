#!/bin/bash
source ./fancy_functions.sh

if [[ -d "export PATH=$PATH:~/Documents/PSL/fancy_tools/bin" ]]; then 
	echo "ce PATH existe deja"
else
	echo "source ~/Documents/PSL/fancy_tools/.aliases">>~/.bashrc
	echo "source ~/Documents/PSL/fancy_tools/fancy_functions.sh">>~/.bashrc
	echo "export PATH=$PATH:~/Documents/PSL/fancy_tools/bin">>~/.bashrc
	cp -r ~/Documents/PSL/fancy_tools/bin  ~
	echo "export PATH=$PATH:~/bin">>~/.bashrc
	if [[ -e ~/src ]]; then
		cp -r ~/Documents/PSL/fancy_tools/install.sh ~/src
		echo "export PATH=$PATH:~/src">>~/.bashrc
	else 
		mkdir ~/src
		cp -r ~/Documents/PSL/fancy_tools/install.sh ~/src
		echo "export PATH=$PATH:~/src">>~/.bashrc
	fi
	cp -r ~/Documents/PSL/fancy_tools/bin/updateFancyTools ~/bin
fi