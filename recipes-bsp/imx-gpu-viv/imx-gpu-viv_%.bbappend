# imx-gpu-viv: libgl-imx-dev: remove conflicting rdepends
#The recipe explicitly sets a conflict between the two packages libgl-imx
#and libgl-mesa with some python magic, so one shouldn't RDEPEND on the other.

#e.g. when building the SDK most -dev packages are missing and one gets:
#| Problem: package libgl-imx-dev-1:6.2.4.p1.2+aarch32-r0.armv7at2hf_neon_mx6qdl requires libgl-mesa-dev, but none of the providers can be installed
#|  - package libgl-mesa-dev-2:18.1.3-r0.armv7at2hf_neon_mx6qdl conflicts with libgl-dev provided by libgl-imx-dev-1:6.2.4.p1.2+aarch32-r0.armv7at2hf_neon_mx6qdl
#|  - conflicting requests

#This patch was implemented based on meta-freescale history:692cd2f26718512343ee170bac6ba4dbc71e5fc9
# https://github.com/Freescale/meta-freescale.git

RDEPENDS_libgl-imx-dev += ""
