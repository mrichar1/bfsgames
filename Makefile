games.pdf: *.tex
	sh makeinputs.sh >inputs.tex
	pdflatex --shell-escape games.tex
	pdflatex --shell-escape games.tex
	makeindex games
	makeindex games-alt
	makeindex games-play
	pdflatex --shell-escape games.tex
	pdflatex --shell-escape games.tex

clean:
	rm *.idx *.ilg *.log *.ind *.toc *.aux *.pdf
