build: resume.pdf

resume.pdf: resume.tex resume.aux
	pdflatex resume.tex

resume.aux: resume.tex
	pdflatex resume.tex
