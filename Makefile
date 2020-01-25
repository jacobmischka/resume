.PHONY: watch

resume.pdf: resume.tex
	latexmk $<

watch:
	echo 'resume.tex' | entr make
