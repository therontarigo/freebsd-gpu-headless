# $FreeBSD$

PORTNAME=       nvidia-hybrid-graphics
DISTVERSION=    0.4
CATEGORIES=     x11
MASTER_SITES=   https://raw.githubusercontent.com/therontarigo/freebsd-gpu-headless/master/dist/
DISTNAME=       nvidia-headless-utils-${DISTVERSION}
EXTRACT_SUFX=   .tar.xz

MAINTAINER=	theron@FreeBSD.org
COMMENT=	NVIDIA headless (discrete GPU) graphics acceleration - AKA Optimus

RUN_DEPENDS=    \
		nvidia-headless-utils>=0.3:x11/nvidia-headless-utils \
		nvidia-headless-driver>=390.87:x11/nvidia-headless-driver \
		${LOCALBASE}/VirtualGL/bin/vglrun:x11/virtualgl \
		nvidia-settings:x11/nvidia-settings

ONLY_FOR_ARCHS= i386 amd64

OPTIONS_DEFINE=		OPTIRUN
OPTIONS_DEFAULT=	OPTIRUN
OPTIONS_SUB=		OPTIRUN
OPTIRUN_DESC=		Install "optirun" alias for nvrun-vgl

post-install-OPTIRUN-on:
	@${RLN} ${STAGEDIR}${PREFIX}/bin/nvrun-vgl \
		${STAGEDIR}${PREFIX}/bin/optirun

.include <bsd.port.mk>
