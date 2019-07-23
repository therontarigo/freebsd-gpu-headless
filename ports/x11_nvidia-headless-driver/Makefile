PORTNAME=	nvidia-headless-driver
# Explicitly set PORTREVISION as it can be overridden by the master port
PORTREVISION=	0

MASTERDIR=	${.CURDIR}/../nvidia-driver

MAINTAINER=     theron.tarigo@gmail.com
COMMENT=        NVidia graphics card binary drivers for hardware OpenGL rendering on secondary device

CONFLICTS_INSTALL:=nvidia-driver

EXTENSIONSLN=	lib/xorg/_modules-NVIDIA/extensions
NO_LIBMAP=1

LIBGLDIR?=	lib/libGL-NVIDIA

SUB_FILES=	pkg-message

.include "${MASTERDIR}/Makefile"
