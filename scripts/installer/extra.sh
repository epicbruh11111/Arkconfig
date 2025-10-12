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


# virtual machine:

run_command "pacman -S --noconfirm qemu-full virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libvirt polkit polkit-gnome" "Install KVM/QEMU " "yes"

run_command "systemctl enable --now libvirtd.service
" "activate KVM/QEMU && sudo usermod -aG libvirt $(whoami)
" "yes"

run_command "sudo virsh net-start default && sudo virsh net-autostart default" "enable default network (must for virtual machines)"

