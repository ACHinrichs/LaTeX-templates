#!/bin/sh
for f in *.tex;
do
  latexmk -pdf --interaction=nonstopmode -xelatex $f;
  latexmk -c $f;
done