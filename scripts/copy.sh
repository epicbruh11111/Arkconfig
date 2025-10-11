#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/Arkconfig/scripts/installer/helper.sh



run_command "cp -r $BASE_DIR/configs/btop /home/$SUDO_USER/.config/ztest" "Copy btop config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/cava /home/$SUDO_USER/.config/ztest" "Copy cava config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/hypr /home/$SUDO_USER/.config/ztest" "Copy hypr config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/kitty /home/$SUDO_USER/.config/ztest" "Copy kitty config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/rofi /home/$SUDO_USER/.config/ztest" "Copy rofi config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/swaync /home/$SUDO_USER/.config/ztest" "Copy swaync config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/waybar /home/$SUDO_USER/.config/ztest" "Copy waybar config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/wlogout /home/$SUDO_USER/.config/ztest" "Copy wlogout config" "yes" "no"
run_command "cp -r $BASE_DIR/assets /home/$SUDO_USER/.config/ztest" "Copy assets (Must! Some apps rely on it)" "yes" "no"
run_command "cp -r $BASE_DIR/configs/.zshrc /home/$SUDO_USER/" "Copy zsh config" "yes" "no"
run_command "cp -r $BASE_DIR/configs/fastfetch /home/$SUDO_USER/.config/" "Copy btop config" "yes" "no"