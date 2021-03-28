#!/bin/bash
# install script. Please adapt to your local config, this here should be ok for texlive (2020 at least)

#loc=/usr/local/texlive/2020/texmf-dist/tex/latex/chordbars/
loc=/usr/local/texlive/texmf-local/tex/latex/chordbars/


mkdir -p $loc
cp chordbars.sty $loc

texhash

