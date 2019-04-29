FROM thomasweise/texlive:latest
RUN wget https://git.rwth-aachen.de/ACHinrichs/LaTeX-templates/-/archive/dev/LaTeX-templates-dev.tar.gz
RUN tar xzf LaTeX-templates-dev.tar.gz
RUN mkdir -p ~/texmf/tex/latex/local
RUN mv LaTeX-templates-dev ~/texmf/tex/latex/local/
RUN texhash
RUN wget http://www.gust.org.pl/projects/e-foundry/tex-gyre/adventor/qag2_501bas.zip
RUN unzip qag2_501bas.zip -d ~/.fonts
RUN wget http://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella/qpl2_501bas.zip
RUN unzip qpl2_501bas.zip -d ~/.fonts
RUN wget https://www.fontsquirrel.com/fonts/download/fira-mono
RUN unzip fira-mono -d ~/.fonts
RUN fc-cache -fv