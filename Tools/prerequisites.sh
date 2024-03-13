#!/usr/bin/bash
echo "Prerequisites for building VLSI tools"
echo "-------------------------------------"

sudo apt purge
sudo apt autoremove
sudo apt update
sudo apt upgrade

sudo apt install -y \
                autoconf automake autotools-dev curl libmpc-dev \
                libmpfr-dev libgmp-dev texinfo gperf patchutils bc libexpat1-dev \
                build-essential cmake gperf gdb unzip meson \
                xterm libx11-dev libmotif-dev \
                xfonts-base xfonts-100dpi xfonts-75dpi \
				xfonts-cyrillic xfonts-scalable \
                libxaw7-dev x11-xserver-utils \
                clang bison flex gawk git libgit2-dev \
                libreadline-dev tcl-dev tk-dev libffi-dev \
                graphviz xdot pkg-config \
                python3 python3.9-tk \
                libgsl-dev zlib1g-dev libxt-dev \
                m4 tcsh csh libcairo2-dev libeigen3-dev \
                mesa-common-dev libglu1-mesa-dev libncurses-dev \
                libboost-all-dev libboost-dev libboost-system-dev \
                libboost-python-dev libboost-filesystem-dev \
                qtbase5-dev qtdeclarative5-dev \
                swig libtool libjpeg-dev \
                perl perl-doc libgtk-3-dev gettext help2man \
                desktop-file-utils libbz2-dev libjudy-dev
sudo apt --fix-broken install
