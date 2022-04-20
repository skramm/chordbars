#!/bin/bash
# install script. Please adapt to your local config, this here should be ok for texlive 2021

#mkdir -p /usr/local/texlive/texmf-local/tex/latex/chordbars/
#mkdir -p /usr/local/share/texmf/tex/latex/chordbars/


cp chordbars.sty /usr/local/texlive/2021/texmf-dist/tex/latex/chordbars/chordbars.sty
texhash

