# $FreeBSD$

PORTNAME=       nvidia-headless-utils
DISTVERSION=    0.1
CATEGORIES=     x11
MASTER_SITES=   https://raw.githubusercontent.com/therontarigo/freebsd-gpu-headless/master/dist/
DISTNAME=       ${PORTNAME}-${DISTVERSION}
EXTRACT_SUFX=   .tar.xz

MAINTAINER=     theron.tarigo@gmail.com
COMMENT=        Utilities for running OpenGL applications on nvidia-headless-driver

RUN_DEPENDS=    nvidia-xconfig:x11/nvidia-xconfig \
                ${PREFIX}/lib/xorg/modules-nvidia-headless/drivers/nvidia_drv.so:x11/nvidia-headless-driver

ONLY_FOR_ARCHS= i386 amd64

.include <bsd.port.mk>
