TYP_SRCS := $(wildcard *.typ)

.PHONY: all clean dist

all: $(TYP_SRCS:.typ=.pdf)

dist: $(TYP_SRCS:.typ=.pdf)
	rm -vrf dist
	mkdir -vp dist
	cp -v *.pdf dist/

%.pdf: %.typ
	typst compile $< $@

clean:
	rm -vf $(TYP_SRCS:.typ=.pdf)
	rm -vrf dist
