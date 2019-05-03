
all: homeworkassignment.cls homeworkassignment.pdf

homeworkassignment.cls: homeworkassignment.ins homeworkassignment.dtx
	echo "y" | latex homeworkassignment.ins

homeworkassignment.pdf: homeworkassignment.dtx
	latexmk -pdf homeworkassignment.dtx
