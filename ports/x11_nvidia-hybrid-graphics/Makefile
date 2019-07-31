# $FreeBSD$

PORTNAME=       nvidia-hybrid-graphics
DISTVERSION=    0.3
PORTREVISION=	1
CATEGORIES=     x11
MASTER_SITES=   https://raw.githubusercontent.com/therontarigo/freebsd-gpu-headless/master/dist/
DISTNAME=       nvidia-headless-utils-${DISTVERSION}
EXTRACT_SUFX=   .tar.xz

MAINTAINER=     theron.tarigo@gmail.com
COMMENT=        Use Nvidia acceleration on system with hybrid graphics configuration aka Optimus

RUN_DEPENDS=    \
		nvidia-headless-utils>=0.3:x11/nvidia-headless-utils \
		nvidia-headless-driver>=390.87:x11/nvidia-headless-driver \
		${LOCALBASE}/VirtualGL/bin/vglrun:x11/virtualgl \
		nvidia-settings:x11/nvidia-settings

ONLY_FOR_ARCHS= i386 amd64

.include <bsd.port.mk>
