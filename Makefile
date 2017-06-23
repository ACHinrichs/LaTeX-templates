DOCTEX=pdflatex
CLSTEX=latex
DOCflags="--interaction=batchmode"
CLSflags="--interaction=nonstopmode"

hwa: HomeworkAssignment.ins HomeworkAssignment.dtx
	rm .\HomeworkAssignment.cls -f
	$(CLSTEX) HomeworkAssignment.ins $(CLSFflags)


examples HomeworkAssignment
