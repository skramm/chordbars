
#INFILES=$(wildcard *.tex)
INFILES=chordbars_manual.tex sample_song_1.tex size_demo.tex
OUTFILES= $(patsubst %.tex, %.pdf, $(INFILES))

all: $(OUTFILES)
	@echo "done $@"

%.pdf: %.tex	Makefile chordbars.sty
	@mkdir -p BUILD/
	pdflatex -interaction=batchmode $< 1>BUILD/$(basename $<).stdout 2>BUILD/$(basename $<).stderr
	
show:
	@echo "INFILES=$(INFILES)"
	@echo "OUTFILES=$(OUTFILES)"
	
clean:
	-rm *.out
	-rm *.log
	-rm *.aux
	-rm *.gz


