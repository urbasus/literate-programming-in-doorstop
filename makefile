all: hello/hello hello/hello.html
.PHONY: all hello/hello.html

hello/hello: hello/hello.o

C_SOURCES := hello/hello.c

$(C_SOURCES): %.c: %.md
	notangle -R$(@F) $< > $@

MD_DOCUMENTS := hello/hello.md

$(MD_DOCUMENTS): %.md:
	doorstop publish -m $(*F) $@

HTML_DOCUMENTS := hello/hello.html

$(HTML_DOCUMENTS): %.html:
	doorstop publish -H $(*F) $@

hello/hello.md hello/hello.html: hello/.doorstop.yml $(wildcard hello/hello*.yml)

test: hello/hello hello/hello_expected.txt
	hello/hello | diff --strip-trailing-cr - hello/hello_expected.txt
.PHONY: test
