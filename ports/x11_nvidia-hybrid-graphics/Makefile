# $FreeBSD$

PORTNAME=	nvidia-hybrid-graphics
MASTERDIR=	${.CURDIR}/../nvidia-headless-utils

COMMENT=	NVIDIA headless (discrete GPU) graphics acceleration - AKA Optimus

RUN_DEPENDS=	nvidia-headless-utils>=0.3:x11/nvidia-headless-utils \
		nvidia-headless-driver>=390.87:x11/nvidia-headless-driver \
		${LOCALBASE}/VirtualGL/bin/vglrun:x11/virtualgl \
		nvidia-settings:x11/nvidia-settings

DESCR=	${.CURDIR}/pkg-descr
PLIST=	${.CURDIR}/pkg-plist

SUB_FILES=
USE_RC_SUBR=

OPTIONS_DEFINE=		OPTIRUN
OPTIONS_DEFAULT=	OPTIRUN
OPTIONS_SUB=		OPTIRUN
OPTIRUN_DESC=		Install "optirun" alias for nvrun-vgl

post-install-OPTIRUN-on:
	@${RLN} ${STAGEDIR}${PREFIX}/bin/nvrun-vgl \
		${STAGEDIR}${PREFIX}/bin/optirun

.include "${MASTERDIR}/Makefile"
