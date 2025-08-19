#!/bin/bash
clear
echo "[ ]checking for [wallpaper]"
echo "[ ]checking for [setup_file]"
echo "[ ]checking for [gnome_term]"
echo "[ ]checking for [oh my zsh]"
rm -rf ~/Pictures/wallpaper
git clone git@github.com:IAnero/Wallpaper.git ~/Pictures/wallpap
clear
echo "[✅]ok: [wallpaper]"
echo "[ ]checking for [setup_file]"
echo "[ ]checking for [gnome_term]"
echo "[ ]checking for [oh my zsh]"
rm -rf ~/setup_file
git clone git@github.com:IAnero/setup_file.git ~/setup_file
rm -rf ~/.themes 
mkdir ~/.themes
mv ~/setup_file/dotthemes/WhiteSur-Dark ~/.themes
echo "_themes OK"
rm -rf ~/.icons
mkdir ~/.icons
mv ~/setup_file/doticons/WhiteSur-Dark ~/.icons
echo "_icons OK"
rm ~/.zshrc
ln -s ~/setup_dep/.zshrc ~/.zshrc
clear
echo "[✅]ok: [wallpaper]"
echo "[✅]ok: [setup_file]"
echo "[ ]checking for [gnome_term]"
echo "[ ]checking for [oh my zsh]"
curl -L https://raw.githubusercontent.com/nordtheme/gnome-terminal/src/nord.sh | python3 -
clear
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
echo ""
echo "Congrats Nero, now dont forget to"
echo ""
echo "() Alt+F2 r"
echo "() Custom shortcuts for gnome-terminal to be ctrl+alt+t"
echo "() Apply the font from ~/setup_file/JetBrainsMonoNerdFont-Regular.ttf"
echo "() In Gnome Terminal, open Edit -> Preferences, and enable the profile for the Nord themes"
echo "() Change font for the Terminal"
echo "() Make tweaks ur bitch"
