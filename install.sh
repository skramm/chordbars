#!/bin/bash
# install script. Please adapt to your local config, this here should be ok for texlive (2020 at least)

p=$(kpsewhich -var-value TEXMFLOCAL)

if [ "$p" == "" ]
then
	echo "Command kpsewhich failed, exiting!"
	exit 1
fi

#p1=$(which pdflatex)
echo "p=$p"


# this attemps to find the location of texlive
# if the program is here:
# /usr/local/texlive/2020/bin/x86_64-linux/pdflatex

# /usr/local/texlive/2020/texmf-dist/tex/latex/chordbars/chordbars.sty

loc1=tex/latex/local

echo "installing chordbars.sty into $p/$loc1"

mkdir -p $p/$loc1/chordbars
cp chordbars.sty $p/$loc1/chordbars

loc2=doc/local
echo "installing chordbars doc into $p/$loc2"
mkdir -p $p/$loc2/chordbars
cp chordbars_manual.pdf $p/$loc2/chordbars
cp -r manual_lst/ $p/$loc2/chordbars
cp *.md $p/$loc2/chordbars

texhash

