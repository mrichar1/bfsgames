#!/bin/bash
ls -1 *.tex |perl -ne 'next if ($_ =~ /^games.tex$/ or /^inputs.tex$/); s/\.tex$//; s/(.*)/\\input{$1}/; print "$_";'
