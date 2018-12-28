#!/bin/bash
set -x
cd ..

zip chordbars.zip \
	chordbars/chordbars.sty \
	chordbars/chordbars_manual.tex \
	chordbars/chordbars_manual.pdf \
	chordbars/README.md \
	chordbars/listing_*.lst

mv chordbars.zip chordbars/


