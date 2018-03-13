main.pdf: main.tex main.bbl main.blg
	xelatex $< > /dev/null
	xelatex $< > /dev/null

main.aux: main.tex
	xelatex $^ > /dev/null

main.bbl main.blg: sample.bib main.aux
	bibtex main > /dev/null

clean:
	rm -f *.pdf
	rm -f *.out
	rm -f *.log
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
