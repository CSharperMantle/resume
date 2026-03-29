TYP_SRCS := $(wildcard *.typ)

.PHONY: all clean dist

all: $(TYP_SRCS:.typ=.pdf)

dist: $(TYP_SRCS:.typ=.pdf)
	rm -vrf pdf
	mkdir -vp pdf
	mv -v *.pdf pdf/

%.pdf: %.typ
	typst compile $< $@

clean:
	rm -vf $(TYP_SRCS:.typ=.pdf)
	rm -vrf pdf
