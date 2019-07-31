# $FreeBSD$

PORTNAME=       nvidia-headless-utils
DISTVERSION=    0.3
PORTREVISION=	1
CATEGORIES=     x11
MASTER_SITES=   https://raw.githubusercontent.com/therontarigo/freebsd-gpu-headless/master/dist/
DISTNAME=       ${PORTNAME}-${DISTVERSION}
EXTRACT_SUFX=   .tar.xz

MAINTAINER=     theron.tarigo@gmail.com
COMMENT=        Utilities for running OpenGL applications on nvidia-headless-driver

RUN_DEPENDS=    nvidia-xconfig:x11/nvidia-xconfig \
		nvidia-headless-driver>=390.87:x11/nvidia-headless-driver

ONLY_FOR_ARCHS= i386 amd64

SUB_FILES=      pkg-message

USE_RC_SUBR=	nvidia_headless_xorg

.include <bsd.port.mk>
