#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/scripts/installer/helper.sh

run_command "yay -S --sudoloop --noconfirm brave-bin" "Install brave Browser" "yes" "no" 
run_command "yay -S --sudoloop --noconfirm elecwhat-bin" "Install elecwhat" "yes" "no" 


run_command "pacman -S --noconfirm discord" "Install discord " "yes"
run_command "pacman -S --noconfirm python" "Install python (Recommended)" "yes"
run_command "pacman -S --noconfirm python-pip python-pipx" "Install pip (Recommended)" "yes"
run_command "pacman -S --noconfirm rust" "Install rust (Recommended)" "yes"
run_command "pacman -S --noconfirm cargo" "Install cargo (Recommended)" "yes"
run_command "pacman -S --noconfirm thunderbird" "Install thunderbird " "yes"
run_command "pacman -S --noconfirm obsidian" "Install obsidian " "yes"
