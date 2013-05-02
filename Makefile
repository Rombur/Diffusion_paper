pdf : diffusion_paper_elsevier.tex
	pdflatex diffusion_paper_elsevier
	bibtex diffusion_paper_elsevier
	pdflatex diffusion_paper_elsevier
	pdflatex diffusion_paper_elsevier

.PHONY : clean

clean :
	-rm diffusion_paper_elsevier.pdf
	-rm *.log *.aux *.bbl *.blg
