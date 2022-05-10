SHELL  := /bin/bash

OUTPUT := report-tcc-1
BIBREF := references.bib

LATEX  := xelatex
BIBTEX := bibtex

OBJS   := $(wildcard **/*.tex) $(wildcard *.tex)
BIBS   := $(wildcard **/*.bib) $(wildcard *.bib)

all: $(OUTPUT).pdf

%.pdf: $(OBJS) $(BIBREF)
	$(LATEX) --shell-escape $(basename $@)
ifdef BIBREF
	$(BIBTEX) $(basename $@) 1>/dev/null
	$(LATEX) --shell-escape $(basename $@)
endif
	$(LATEX) --shell-escape $(basename $@)

.PHONY: clean

clean:
	rm -f *.{aux,bbl,blg,log,toc}
	rm -rf _minted-$(OUTPUT)

clean-pdf:
	rm $(OUTPUT).pdf
