
.if "${PREFIX}" == ""
.error PREFIX must be set
.endif

.PHONY: all install

all:

srcs!=find src -type f

PREFIX_SED!=echo ${PREFIX} | sed 's/\//\\\//g'

.for src in ${srcs}
${src:src/%=build/%}: ${src}
	-mkdir -p `dirname ${src:src/%=build/%}`
	cp ${src} ${src:src/%=build/%}
	sed -i '' 's/%%PREFIX%%/${PREFIX_SED}/g' ${src:src/%=build/%}
all: ${src:src/%=build/%}
.endfor

install:
	mkdir -p ${DESTDIR}/${PREFIX}
	cp -r build/* ${DESTDIR}/${PREFIX}/

clean:
	rm -rf build
