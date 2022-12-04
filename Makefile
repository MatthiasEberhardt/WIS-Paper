base = paper
$(base).pdf: $(base).tex body.tex mybib.bib
	pdflatex $<
	bibtex $(base)
	pdflatex $<

clean:
	rm -f $(base).aux $(base).bbl $(base).blg $(base).brf $(base).lbl $(base).log $(base).pdf

