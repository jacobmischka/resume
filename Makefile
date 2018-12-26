.PHONY: watch

resume.pdf: resume.tex resume.aux
	pdflatex $<

resume.aux: resume.tex
	pdflatex $<

watch: resume.tex
	echo $< | entr make
