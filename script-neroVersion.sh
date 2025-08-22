#!/bin/bash

# For local own PC uncomment the paragraph below
#For 42 PC comment this paragraph if uncommented
echo "this part of the script is supposed to install every dependency for the dev environment"
echo "It will take a bit of time, relax and wait"
clear
sudo apt update && sudo apt upgrade -y && sudo apt install -y \
    git \
    curl \
    wget \
    python3-pip \
    build-essential \
    gcc \
    g++ \
    make \
    cmake \
    gdb \
    valgrind \
    clang \
    clang-format \
    libx11-dev \
    libxext-dev \
    libxrandr-dev \
    libxinerama-dev \
    libxcursor-dev \
    libxi-dev \
    xorg \
    libgl1-mesa-dev \
    libglu1-mesa-dev
clear
echo "Installation successful of : git, curl, wget, python3-pip, build-essential, gcc, g++, make, cmake,
gdb, valgrind, clang, clang-format, libx11-dev, libxext-dev, libxrandr-dev, libxinerama-dev, libxcursor-dev,
libxi-dev, xorg, libgl1-mesa-dev and libglu1-mesa-dev"
clear
echo "This part cover the installation of the apps that are needed for the dev environment"
echo "It will take a bit of time, relax and wait, yes again"
clear
# Update and upgrade first
sudo apt update && sudo apt upgrade -y
# Install prerequisite tools
sudo apt install -y wget gpg apt-transport-https software-properties-common
clear

# Install VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install -y code
echo "[✅] [Vscode]"
echo "[ ]  [Google Chrome]"
echo "[ ]  [Discord]"
echo "[ ]  [VirtualBox]"
echo "[ ]  [Obsidian]"
clear

# Install Google Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb
echo "[✅] [Vscode]"
echo "[✅]  [Google Chrome]"
echo "[ ]  [Discord]"
echo "[ ]  [VirtualBox]"
echo "[ ]  [Obsidian]"
clear

# Install Discord
wget -q https://discord.com/api/download?platform=linux&format=deb -O discord.deb
sudo apt install -y ./discord.deb
rm -f discord.deb
echo "[✅] [Vscode]"
echo "[✅]  [Google Chrome]"
echo "[✅]  [Discord]"
echo "[ ]  [VirtualBox]"
echo "[ ]  [Obsidian]"
clear

# Install VirtualBox
sudo apt install -y virtualbox virtualbox-ext-pack
echo "[✅] [Vscode]"
echo "[✅]  [Google Chrome]"
echo "[✅]  [Discord]"
echo "[✅]  [VirtualBox]"
echo "[ ]  [Obsidian]"
clear

# Install Obsidian
wget -q https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.25/Obsidian-1.1.25.deb -O obsidian.deb
sudo apt install -y ./obsidian.deb
rm -f obsidian.deb
echo "[✅] [Vscode]"
echo "[✅]  [Google Chrome]"
echo "[✅]  [Discord]"
echo "[✅]  [VirtualBox]"
echo "[✅]  [Obsidian]"
clear

echo "This part is gonna clone all the 42 repositories for all the project already done"
mkdir -p ~/42/Common-Core
git clone git@github.com:IAnero/libft.git ~/42/Common-Core/libft
echo "[✅] [libft]"
clear
git clone git@github.com:IAnero/ft_printf.git ~/42/Common-Core/ft_printf
echo "[✅] [ft_printf]"
clear
git clone git@github.com:IAnero/get_next_line.git ~/42/Common-Core/get_next_line
echo "[✅] [get_next_line]"
clear
git clone git@github.com:IAnero/minitalk.git ~/42/Common-Core/minitalk
echo "[✅] [minitalk]"
clear
git clone git@github.com:IAnero/fdf.git ~/42/Common-Core/fdf
echo "[✅] [fdf]"
clear
git clone git@github.com:IAnero/push_swap.git ~/42/Common-Core/push_swap
echo "[✅] [push_swap]"
clear
git clone git@github.com:IAnero/philosophers.git ~/42/Common-Core/philosophers
echo "[✅] [philosophers]"
clear
git clone git@github.com:IAnero/minishell.git ~/42/Common-Core/minishell
echo "[✅] [minishell]"
clear
git clone git@github.com:IAnero/CPP.git ~/42/Common-Core/CPP
echo "[✅] [CPP]"
clear

echo "[ ]checking for [wallpaper]"
echo "[ ]checking for [setup_file]"
echo "[ ]checking for [gnome_term]"
echo "[ ]checking for [oh my zsh]"
rm -rf ~/Pictures/wallpaper
rm -rf ~/Pictures/wallpap
git clone git@github.com:IAnero/Wallpaper.git ~/Pictures/wallpap
echo "[✅]ok: [wallpaper]"
echo "[ ]checking for [setup_file]"
echo "[ ]checking for [Wezterm]"
echo "[ ]checking for [gnome_term]"
echo "[ ]checking for [oh my zsh]"
rm -rf ~/setup_file
git clone git@github.com:IAnero/setup_file.git ~/setup_file
find ~ -name "WezTerm-nightly-Ubuntu20.04.AppImage" -exec chmod +x {} \;
find ~/setup_file -type f -name "nvim" -exec chmod +x {} +
find ~/setup_file -type f -name "rg" -exec chmod +x {} +
find ~/setup_file -type f -name "lazygit" -exec chmod +x {} +
mkdir -p ~/.bin
mv ~/setup_file/dotbin/* ~/.bin/
rm -rf ~/.themes 
mkdir ~/.themes
mv ~/setup_file/dotthemes/WhiteSur-Dark ~/.themes
echo "_themes OK"
rm -rf ~/.icons
mkdir ~/.icons
mv ~/setup_file/doticons/WhiteSur-Dark ~/.icons
echo "_icons OK"
rm ~/.zshrc
rm ~/.wezterm.lua
ln -s ~/setup_dep/.zshrc ~/.zshrc
ln -s ~/setup_dep/.wezterm.lua ~/.wezterm.lua
echo "[✅]ok: [wallpaper]"
echo "[✅]ok: [setup_file]"
echo "[✅]ok: [Wezterm]"
echo "[ ]checking for [gnome_term]"
echo "[ ]checking for [oh my zsh]"
curl -fsSL https://raw.githubusercontent.com/nordtheme/gnome-terminal/develop/src/nord.sh | bash
echo "_gnome-terminal OK"
echo "[✅]ok: [wallpaper]"
echo "[✅]ok: [setup_file]"
echo "[✅]ok: [gnome-term]"
echo "[ ]checking for [oh my zsh]"
uninstall_oh_my_zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "_zsh-autosuggestions OK"
clear
echo "[✅]ok: [wallpaper]"
echo "[✅]ok: [setup_file]"
echo "[✅]ok: [gnome-term]"
echo "[✅]ok: [Oh My Zsh] !"
echo "Congrats Nero, now dont forget to"
echo "() Alt+F2 r"
echo "() Custom shortcuts for Wezterm to be ctrl+alt+t"
echo "() Apply the font from ~/setup_file/JetBrainsMonoNerdFont-Regular.ttf"
echo "() In Gnome Terminal, open Edit -> Preferences, and enable the profile for the Nord themes"
echo "() Change font for the Terminal"
echo "() Make tweaks ur bitch"
