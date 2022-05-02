.PHONY: watch

DEPS=resume.tex cvhead.sty

# https://stackoverflow.com/questions/4734985/replace-spaces-with-new-line-in-makefile/4735256
null :=
space := ${null} ${null}
${space} := ${space}

resume.pdf: ${DEPS}
	latexmk -xelatex $<

watch:
	echo -e $(subst ${ },\\n,${DEPS}) | entr make
