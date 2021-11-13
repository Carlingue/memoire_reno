.PHONY: all
all: inputs.tex	rmfile recette	

inputs.tex: $(wildcard dir/*.tex)
	ls Intro/*.tex | awk '{printf "\\input{%s}\n",$$1}' > src/Intro.tex
rmfile: 
	rm -f memoire_reno.aux memoire_reno.log memoire_reno.toc memoire_reno.pdf

recette: 
	for NBloop in 1 2 ; do \
		pdflatex memoire_reno.tex ; \
	done
