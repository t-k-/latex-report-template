main.pdf: main.tex sample.bib
	xelatex main
	bibtex main > /dev/null
	xelatex main > /dev/null
	xelatex main > /dev/null

clean:
	rm -f *.pdf
	rm -f *.out
	rm -f *.log
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
