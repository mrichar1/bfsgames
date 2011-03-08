games.pdf: *.tex
	sh makeinputs.sh >inputs.tex
	pdflatex games.tex
	pdflatex games.tex
	makeindex Alternatives
	makeindex Index
	pdflatex games.tex

clean:
	rm *.idx *.ilg *.log *.ind *.toc *.aux *.pdf
