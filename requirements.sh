#!/bin/bash

function has_command() {
	command -v $1 > /dev/null
}

install_figlet() {
	if [ ! "$(which figlet 2> /dev/null)" ]; then
		echo "Figlet needs to be installed for the ASCII art to appear"
		if has_command apt-get; then
			sudo apt-get install figlet
		elif has_command apk; then
			sudo apk add figlet
		elif has_command pacman; then
			sudo pacman -S --noconfirm figlet
		elif has_command dnf; then
			sudo dnf install figlet
		elif has_command brew; then
			brew install figlet
		fi
	  fi	
}
