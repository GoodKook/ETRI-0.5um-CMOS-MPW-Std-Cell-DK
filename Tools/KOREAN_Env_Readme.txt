WSL2/Ubuntu Korean Evvironment
------------------------------

#1. Install Korean Fonts

sudo apt-get install fonts-nanum*
sudo dpkg-reconfigure locales

#2. Check Locale in New terminal

locale

#3. Install Input-Method & set IM as Hangeul

sudo apt install fcitx fcitx-hangul fonts-noto-cjk dbus-x11
im-config

#4. KOREAN Env sh.

#!/bin/bash
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx
 
#optional
fcitx-autostart &>/dev/null

#5. Language selector for GNOME

sudo apt install language-selector-gnome
sudo gnome-language-selector

#6. Restart WSL

wsl --shutdown
wsl

#7. Set IM config.

fcitx-config-gtk3

