#!/bin/bash

change_folder()
{
  echo "change folder $1";
  cd $1;
}

clone_repositories(){

echo "Clonning the yocto project repository"
(print '';print ''; print y; print '')|repo init -u https://source.codeaurora.org/external/imx/imx-manifest  -b imx-linux-sumo -m imx-4.14.98-2.0.0_ga.xml
repo sync
if [ -d "$HOME/opt/nxp/sources/poky/meta/classes/features_check.bbclass" ] 
then
  echo "File features_check.bbclass already exists."
else
  echo "copy features_check.bbclass"
  cp $HOME/opt/nxp/sources/poky/meta/classes/distro_features_check.bbclass $HOME/opt/nxp/sources/poky/meta/classes/features_check.bbclass
fi


git clone -b master https://github.com/compulab-yokneam/meta-bsp-imx8mm.git sources/meta-bsp-imx8mm/
git clone -b sumo git://git.yoctoproject.org/meta-security sources/meta-security
git clone -b sumo git://git.yoctoproject.org/meta-mono sources/meta-mono
git clone -b sumo git://git.yoctoproject.org/meta-mono sources/meta-virtualization
git clone -b master https://github.com/RDunkley/meta-dotnet-core.git sources/meta-dotnet-core
git clone -b master https://github.com/danieltarnu/meta-marlin.git sources/meta-marlin

echo "Removing the qt5.10 meta layer"
rm -rf sources/meta-qt5

#git clone -b 5.14 "https://codereview.qt-project.org/yocto/meta-qt5" sources/meta-qt5
#git clone -b jansa/master "https://github.com/meta-qt5/meta-qt5.git" sources/meta-qt5
git clone -b master "https://github.com/danieltarnu/meta-qt5.git" sources/meta-qt5

cp sources/meta-marlin/poky/meta/classes/mime-xdg.bbclass sources/poky/meta/classes/mime-xdg.bbclass
}

install_prerequisites(){
#Essentials: Packages needed to build an image on a headless system:
echo "install packages needed to build an image on a headless system"
sudo apt-get update
sudo apt-get -y install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm repo libncurses5-dev
sudo apt-get -y install repo
}

create_yocto_folder(){
echo "Create yocto project folders"
if [ -d "$HOME/opt" ] 
then
  echo "Folder opt exists."
else
  mkdir $HOME/opt
fi

if [ -d "$HOME/opt/nxp" ] 
then
  echo "Folder opt/nxp exists."
else
  mkdir $HOME/opt/nxp
fi
}

configure_build_environment(){
COMPULAB_MACHINE=ucm-imx8m-mini
MACHINE=${COMPULAB_MACHINE}
#DEV=Yes
echo "configure build environment"
source "$HOME/opt/nxp/sources/meta-marlin/tools/setup-imx8mm-env" -b build-xwayland
}

install_prerequisites
create_yocto_folder
change_folder "$HOME/opt/nxp"

clone_repositories
change_folder "$HOME/opt/nxp"
configure_build_environment
change_folder "$HOME/opt/nxp/build-xwayland"

bitbake -k fsl-image-qt5-validation-imx