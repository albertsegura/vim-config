#!/bin/bash


for file in ~/.vim/bundle/vim-colorschemes/colors/*
do
	 if [[ -f $file ]]; then
		filename=$(basename $file)
		filename="${filename%.*}"
		
		read -p "Colorscheme $filename, continue?" yn
		case $yn in
		    [Yy]* ) break;;
		    [Nn]* ) exit;;
		    * ) echo "Please answer yes or no.";;
		esac
	
		vim -c "colorscheme $filename" $1	
	fi
done

