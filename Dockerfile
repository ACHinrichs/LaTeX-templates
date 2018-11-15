FROM debian:latest

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y texlive-full
RUN apt-get install -y fonts-adf-gillius
RUN wget https://git.rwth-aachen.de/ACHinrichs/LaTeX-templates/-/archive/master/LaTeX-templates-master.tar.gz
RUN tar xzf LaTeX-templates-master.tar.gz
RUN mkdir -p ~/texmf/tex/latex/local
RUN mv LaTeX-templates-master ~/texmf/tex/latex/local/
RUN texhash

