#!/bin/bash
ls -1 *.tex |perl -ne 'next if ($_ =~ /^games.tex$/ or /^inputs.tex$/ or /^title.tex$/); s/\.tex$//; s/(.*)/\\input{$1}/; print "$_";'
#Get svn version for games.pdf
svn info games.tex |grep "Last Changed Rev" |awk '{print $4}' >version.tex
