#!/bin/bash
ls -1 *.tex |perl -ne 'next if ($_ =~ /^games.tex$/ or /^inputs.tex$/ or /^title.tex$/); s/\.tex$//; s/(.*)/\\input{$1}/; print "$_";'
# Get git tag version for games.pdf
git describe >version.tex
