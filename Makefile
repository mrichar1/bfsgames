games.pdf: *.tex
	pdflatex games.tex
	pdflatex games.tex
	makeindex games
	pdflatex games.tex

clean:
	rm *.idx *.ilg *.log *.ind *.toc *.aux
