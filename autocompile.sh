#!/bin/bash

nix-shell latex.nix --run "ls *.tex | entr -s 'rubber --pdf '${1}' ; rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc'"
