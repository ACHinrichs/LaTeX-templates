FROM registry.git.rwth-aachen.de/zoomoid/docker-latexmk
RUN wget https://git.rwth-aachen.de/ACHinrichs/LaTeX-templates/-/archive/dev/LaTeX-templates-dev.tar.gz && \
    tar xzf LaTeX-templates-dev.tar.gz && \
    mkdir -p ~/texmf/tex/latex/local && \
    mv LaTeX-templates-dev ~/texmf/tex/latex/local/ &&\
    texhash
RUN wget http://www.gust.org.pl/projects/e-foundry/tex-gyre/adventor/qag2_501bas.zip && \
    unzip qag2_501bas.zip -d ~/.fonts
RUN wget http://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella/qpl2_501bas.zip && \
    unzip qpl2_501bas.zip -d ~/.fonts
RUN wget https://www.fontsquirrel.com/fonts/download/fira-mono && \
    unzip fira-mono -d ~/.fonts
RUN fc-cache -fv