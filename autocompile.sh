#!/bin/bash
ls *.tex | entr -s 'nix-shell latex.nix --run "rubber --pdf $1.tex" ; rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc'
