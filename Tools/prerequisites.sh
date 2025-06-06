#!/usr/bin/bash
echo "Prerequisites for building VLSI tools"
echo "-------------------------------------"

sudo apt purge
sudo apt autoremove
sudo apt update
sudo apt upgrade

sudo apt install -y \
    autoconf automake autotools-dev curl libmpc-dev \
    ccache numactl \
    libmpfr-dev libgmp-dev texinfo gperf patchutils bc libexpat1-dev \
    build-essential cmake gperf gdb unzip meson \
    xterm libx11-dev libmotif-dev \
    xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable \
    libxaw7-dev x11-xserver-utils \
    clang bison flex gawk git libgit2-dev \
    libfl2 libfl-dev dbus dbus-x11 \
    libreadline-dev tcl-dev tk-dev libffi-dev \
    graphviz xdot pkg-config \
    python3 python3-dev python3-numpy python3-pip \
    python3-matplotlib python3-tk python3-orderedmultidict \
    python3-clang yapf3 bear jq \
    libgsl-dev zlib1g zlib1g-dev libxt-dev \
    m4 tcsh csh libcairo2-dev libeigen3-dev \
    mesa-common-dev libglu1-mesa-dev libncurses-dev \
    libboost-all-dev libboost-dev libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev \
    qtbase5-dev qtdeclarative5-dev qtcreator \
    qtchooser qt5-qmake qtbase5-dev-tools \
    qttools5-dev libqt5xmlpatterns5-dev \
    ruby ruby-dev zlib1g-dev \
    qtmultimedia5-dev libqt5multimediawidgets5 libqt5svg5-dev \
    swig libtool libjpeg-dev \
    perl perl-doc libgtk2.0-dev libgtk-3-dev gettext help2man \
    libcanberra-gtk-module libcanberra-gtk3-module \
    desktop-file-utils libbz2-dev libjudy-dev \
    google-perftools libgoogle-perftools-dev \
    ant default-jre libfl-dev \
    uuid uuid-dev libsecret-1-dev \
    xfe doxygen nemo gedit gedit-plugin-multi-edit libfuse2 gparted

sudo pip3 install sphinx sphinx_rtd_theme sphinxcontrib-spelling breathe ruff
sudo pip3 install git+https://github.com/antmicro/astsee.git
cpan install Pod::Perldoc

sudo apt --fix-broken install
sudo apt 
