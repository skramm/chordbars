
INFILES=$(wildcard *.tex)
OUTFILES= $(patsubst %.tex, %.pdf, $(INFILES))

all: $(OUTFILES)
	@echo "done $@"

BUILD/%.tex: %.tex
	@mkdir -p BUILD/
	@cp $< $@

BUILD/%.pdf: BUILD/%.tex Makefile chordbars.sty $(INFILES)
	@echo "Builing output file $@"
	@cd BUILD; pdflatex -interaction=batchmode $(notdir $<) $(notdir $(basename $<)).stdout 2>$(notdir $(basename $<)).stderr

%.pdf: BUILD/%.pdf
	@cp $< $@
	
show:
	@echo "INFILES=$(INFILES)"
	@echo "OUTFILES=$(OUTFILES)"
	
clean:
	-rm BUILD/*


