
LOCALBASE?=	/usr/local
PREFIX?=	${LOCALBASE}

ACPI_CALL?=	${LOCALBASE}/sbin/acpi_call
VGLRUN?=	${LOCALBASE}/VirtualGL/bin/vglrun

.PHONY: all install

all:

srcs!=find src -type f

.for src in ${srcs}
${src:src/%=build/%}: ${src}
	-mkdir -p $$(dirname ${.TARGET})
	cp ${src} ${.TARGET}
	sed -i '' \
		-e 's,%%PREFIX%%,${PREFIX},g' \
		-e 's,%%LOCALBASE%%,${LOCALBASE},g' \
		-e 's,%%ACPI_CALL%%,${ACPI_CALL},g' \
		-e 's,%%VGLRUN%%,${VGLRUN},g' \
		${.TARGET}
all: ${src:src/%=build/%}
.endfor

install:
	mkdir -p ${DESTDIR}/${PREFIX}
.for src in ${srcs}
	@mkdir -p $$(dirname "${DESTDIR}${PREFIX}${src:src/%=/%}")
	cp ${src:src/%=build/%} ${DESTDIR}${PREFIX}${src:src/%=/%}
.endfor

deinstall:
.for src in ${srcs}
	-rm ${DESTDIR}${PREFIX}${src:src/%=/%}
	@rmdir $$(dirname "${DESTDIR}${PREFIX}${src:src/%=/%}") 2>/dev/null || true
.endfor

clean:
	rm -rf build
