PORTNAME=	nvidia-headless-driver
# Explicitly set PORTREVISION as it can be overridden by the master port
PORTREVISION=	0

MASTERDIR=	${.CURDIR}/../nvidia-driver

MAINTAINER=     theron.tarigo@gmail.com
COMMENT=        NVidia graphics card binary drivers for hardware OpenGL rendering on secondary device

CONFLICTS_INSTALL:=nvidia-driver

MODULESDIR=	lib/xorg/modules-nvidia-headless

post-install: post-install_nvidia-headless-driver post-install_nvidia-driver

PLIST=		${.CURDIR}/pkg-plist

post-install_nvidia-headless-driver: post-install_nvidia-driver
# link renamed lib*GL*.so in lib/nvidia-headless
	${MKDIR} ${STAGEDIR}${PREFIX}/lib/nvidia-headless
	${RLN} ${STAGEDIR}${PREFIX}/lib/libGL-NVIDIA.so.1 \
		${STAGEDIR}${PREFIX}/lib/nvidia-headless/libGL.so.1
	${RLN} ${STAGEDIR}${PREFIX}/lib/libEGL-NVIDIA.so.1 \
		${STAGEDIR}${PREFIX}/lib/nvidia-headless/libEGL.so.1
	${RLN} ${STAGEDIR}${PREFIX}/lib/libGLESv2-NVIDIA.so.2 \
		${STAGEDIR}${PREFIX}/lib/nvidia-headless/libGLESv2.so.2

.include "${MASTERDIR}/Makefile"
