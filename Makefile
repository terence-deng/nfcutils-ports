# $FreeBSD$

PORTNAME=	nfcutils
PORTVERSION=	0.1.2
CATEGORIES=	sysutils
MASTER_SITES=   https://github.com/terence-deng/nfcutils/releases/download/v${PORTVERSION}/
EXTRACT_SUFX=   .tar.gz

MAINTAINER=	dengtooling@gmail.com
COMMENT=	Listing NFC devices and in-field tags or targets

LICENSE=	GPLv3

LIB_DEPENDS=	libnfc.so:devel/libnfc

MAKE_ENV+=	MKDIR="${MKDIR}"
USES=		autoreconf libtool pkgconfig gmake tar:tgz

HAS_CONFIGURE=  true

PLIST_FILES=	bin/lsnfc

.include <bsd.port.mk>
