TYP_SRCS := $(wildcard *.typ)
PDF_OBJS := $(TYP_SRCS:.typ=.pdf)

.PHONY: default
default: all

.PHONY: all
all: $(PDF_OBJS) index.html

.PHONY: dist
dist: all
	rm -vrf dist
	mkdir -vp dist
	cp -v *.pdf dist/
	cp -v index.html dist/

index.html: index.html.in $(PDF_OBJS)
	./scripts/generate-index.sh $< $@

%.pdf: %.typ
	typst compile $< $@

.PHONY: clean
clean:
	rm -vf $(PDF_OBJS)
	rm -vrf dist
