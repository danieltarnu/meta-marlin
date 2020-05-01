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
if [ -d "sources/poky/meta/classes/features_check.bbclass" ] 
then
  echo "File features_check.bbclass already exists."
else
  echo "copy features_check.bbclass"
  cp sources/poky/meta/classes/distro_features_check.bbclass sources/poky/meta/classes/features_check.bbclass
fi


git clone -b master https://github.com/compulab-yokneam/meta-bsp-imx8mm.git sources/meta-bsp-imx8mm/
git clone -b sumo git://git.yoctoproject.org/meta-security sources/meta-security
git clone -b sumo git://git.yoctoproject.org/meta-mono sources/meta-mono
git clone -b sumo git://git.yoctoproject.org/meta-mono sources/meta-virtualization
git clone -b master https://github.com/RDunkley/meta-dotnet-core.git sources/meta-dotnet-core
git clone -b master https://github.com/danieltarnu/meta-marlin.git sources/meta-marlin

echo "Removing the qt5.10 meta layer"
rm -rf sources/meta-qt5

git clone -b master "https://github.com/danieltarnu/meta-qt5.git" sources/meta-qt5

cp sources/meta-marlin/configure-yocto-project.sh ./

}

configure_build_environment(){
COMPULAB_MACHINE=ucm-imx8m-mini
MACHINE=${COMPULAB_MACHINE}
DEV=Yes
echo "configure build environment"
source sources/meta-marlin/tools/setup-imx8mm-env -b build-xwayland
}

#change_folder "/opt/nxp"

#clone_repositories
change_folder "/home/build/opt/nxp"
configure_build_environment
change_folder "/home/build/opt/nxp/build-xwayland"

bitbake -c populate_sdk compulab-qt5-build-env
