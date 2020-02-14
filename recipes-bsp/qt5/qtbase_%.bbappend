#xcb-input case configuration issue on qt5, possible because of the old version of xorg-lib from sumo branch of poky layers (xorg-lib is located under the poky folder, meta\recipes-graphics)
PACKAGECONFIG_X11_remove += " xcb-xinput "
