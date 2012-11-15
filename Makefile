pdf : diffusion_paper.tex
	pdflatex diffusion_paper
	bibtex diffusion_paper
	pdflatex diffusion_paper
	pdflatex diffusion_paper

.PHONY : clean

clean :
	-rm diffusion_paper.tex
	-rm *.log *.aux *.bbl *.blg
