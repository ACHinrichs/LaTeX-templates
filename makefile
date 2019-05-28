VPATH=cheatsheet:homeworkassignment:polynom

all: HWA POLY CSH

zips: homeworkassignment.zip polynom.zip cheatsheet.zip

CSH: cheatsheet.cls cheatsheet.pdf

HWA: homeworkassignment.cls homeworkassignment.pdf

POLY: docu_polynom.pdf

cheatsheet.cls: cheatsheet.dtx cheatsheet.ins
	cd cheatsheet; echo y | latex cheatsheet.ins 

cheatsheet.pdf: cheatsheet.dtx
	cd cheatsheet; latexmk -pdf cheatsheet.dtx

cheatsheet.zip: cheatsheet.pdf cheatsheet.cls
	zip cheatsheet.zip cheatsheet/cheatsheet.pdf cheatsheet/cheatsheet.cls

homeworkassignment.cls: homeworkassignment.dtx homeworkassignment.ins
	cd homeworkassignment; echo y | latex homeworkassignment.ins 

homeworkassignment.pdf: homeworkassignment.dtx
	cd homeworkassignment; latexmk -pdf homeworkassignment.dtx

homeworkassignment.zip: homeworkassignment.pdf homeworkassignment.cls
	zip homeworkassignment.zip homeworkassignment/homeworkassignment.pdf homeworkassignment/homeworkassignment.cls

docu_polynom.pdf: docu_polynom.tex docu_landscape.jpg
	cd polynom; latexmk docu_polynom.tex -pdf

polynom.zip: docu_polynom.pdf
	zip polynom.zip polynom/docu_polynom.pdf polynom/docu_polynom.tex polynom/docu_landscape.jpg polynom/beamer*themepolynom*.sty
