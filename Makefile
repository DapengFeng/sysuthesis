# Makefile for SYSUThesis

PACKAGE = sysuthesis
THESIS  = sysuthesis-example
SPINE   = spine

SOURCES = $(PACKAGE).ins $(PACKAGE).dtx
CLSFILE = dtx-style.sty $(PACKAGE).cls

LATEXMK = latexmk
SHELL  := /bin/bash
NPM    ?= npm

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: all all-dev clean distclean dist thesis viewthesis spine viewspine doc viewdoc cls check  savepdf FORCE_MAKE

thesis: $(THESIS).pdf

all: thesis spine

all-dev: doc all

cls: $(CLSFILE)

$(CLSFILE): $(SOURCES)
	xetex $(PACKAGE).ins

doc: $(PACKAGE).pdf

spine: $(SPINE).pdf

$(PACKAGE).pdf: cls FORCE_MAKE
	$(LATEXMK) $(PACKAGE).dtx

$(THESIS).pdf: cls FORCE_MAKE
	$(LATEXMK) $(THESIS)

$(SPINE).pdf: cls FORCE_MAKE
	$(LATEXMK) $(SPINE)

viewdoc: doc
	$(LATEXMK) -pv $(PACKAGE).dtx

viewthesis: thesis
	$(LATEXMK) -pv $(THESIS)

viewspine: spine
	$(LATEXMK) -pv $(SPINE)

clean:
	$(LATEXMK) -c $(PACKAGE).dtx $(THESIS) $(SPINE)
	-@$(RM) -rf *~ main-survey.* main-translation.* _markdown_sysuthesis* sysuthesis.markdown.*

cleanall: clean
	-@$(RM) $(PACKAGE).pdf $(THESIS).pdf $(SPINE).pdf

distclean: cleanall
	-@$(RM) $(CLSFILE)
	-@$(RM) -r dist

check: FORCE_MAKE
ifeq ($(version),)
	@echo "Error: version missing: \"make [check|dist] version=X.Y.Z\""; exit 1
else
	@[[ $(shell grep -E -c '$(version) Sun Yat-sen University Thesis Template|\\def\\version\{$(version)\}' sysuthesis.dtx) -eq 3 ]] || (echo "update version with \'l3build tag\" before release"; exit 1)
	@[[ $(shell grep -E -c '"version": "$(version)"' package.json) -eq 1 ]] || (echo "update version with \'l3build tag\" before release"; exit 1)
endif

dist: check all-dev
	# use l3build for CTAN release (zip with .tds.zip)
	l3build ctan --config build-ctan
	# use gulp for GitHub release (zip with generated file)
	$(NPM) run build -- --version=$(version)
