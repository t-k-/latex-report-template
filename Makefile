main.pdf: main.tex
	xelatex -halt-on-error main
	#bibtex  main > /dev/null
	#xelatex -halt-on-error main > /dev/null
	#xelatex -halt-on-error main > /dev/null

clean:
	rm -f *.pdf
	rm -f *.out
	rm -f *.log
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
