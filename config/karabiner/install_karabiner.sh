#!/bin/bash
# Karabiner Elements Install Script
# Nefari0uss

SCRIPT_LOCATION=$(readlink -f "$0") # Get the path of this file.
SCRIPT_DIR=$(dirname "$SCRIPT_LOCATION") # Get the path of the folder the file is current in.
CONFIG_DIR=$HOME/.config/karabiner

#printf 'Script %s\n' $SCRIPT
#printf 'Script Dir %s\n' $SCRIPT_DIR
#printf 'Config_dir %s\n' $CONFIG_DIR

printf "\nInstalling Karabiner Elements config.\n"

if [ -d "$CONFIG_DIR" ]; then
  printf "Deleting existing karabiner config folder.\n"
  rm "$CONFIG_DIR"
elif [ -d "$HOME/.config" ]; then
  printf "Creating config folder under %s. \n" $HOME
  mkdir -p "$HOME/.config"
fi

printf "Making symb link for karabiner folder.\n"
ln -s "$SCRIPT_DIR" "$CONFIG_DIR"

printf "Karabiner Elements config installation complete.\n"
