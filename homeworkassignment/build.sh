#!/bin/sh
# clean up previous files to skip interactive prompts
rm ./homeworkassignment.cls
# build cls file
latex homeworkassignment.ins
# build documentation pdf
pdflatex --interaction=nonstopmode -pdf homeworkassignment.dtx
# cleanup aux files
latexmk -c homeworkassignment.dtx
rm *.glo