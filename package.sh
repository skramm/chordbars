#!/bin/bash
set -x
cd ..

zip chordbars.zip \
	chordbars/chordbars.sty \
	chordbars/chordbars_manual.tex \
	chordbars/chordbars_manual.pdf \
	chordbars/README.md \
	chordbars/listing_*.lst \
	chordbars/size_demo.tex \
	chordbars/size_demo.pdf \
	sample_song_1.tex \
	sample_song_1.pdf \
	package.sh
	
mv chordbars.zip chordbars/


