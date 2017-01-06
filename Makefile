Latex=pdflatex
Doc=install.pdf

all:$(Doc)

%.pdf:%.tex
	pdflatex $<

view:$(Doc)
	zathura $<

clean:
	$(RM) *.pdf *.aux *.log *.out *.toc

commit:$(DOC)
	$(RM) *.aux *.log *.out *.toc

.PHONY:
	all $(DOC) view clean
