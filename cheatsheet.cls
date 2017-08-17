%%
%% This is file `cheatsheet.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cheatsheet.dtx  (with options: `class')
%% Copyright (c) 2017 by Adrian C. Hinrichs
%% 
%% This File may be distributed and/or modified under the condition of the below
%% license.
%% 
%% 
%% MIT License
%% 
%% 
%% 
%% Copyright (c) 2017
%% 
%% 
%% 
%% Permission is hereby granted, free of charge, to any person obtaining a copy
%% of this software and associated documentation files (the "Software"), to deal
%% in the Software without restriction, including without limitation the rights
%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%% copies of the Software, and to permit persons to whom the Software is
%% furnished to do so, subject to the following conditions:
%% 
%% The above copyright notice and this permission notice shall be included in all
%% copies or substantial portions of the Software.
%% 
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%% SOFTWARE.
\def\csfileversion{v1.0}
\def\csfiledate{2017/08/18}
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{cheatsheet}[\csfiledate\space\csfileversion]
\RequirePackage{kvoptions}
\RequirePackage{xifthen}

\SetupKeyvalOptions{ family=cs,
  prefix=cs@ }
\DeclareStringOption[4]{columns}
\DeclareVoidOption{twocolumn}{\ClassError{CheatSheet}{'twocolumn' is not
    supported, use 'columns=2' instead!}{Because I can not 'catch' an
    option, I have to emit an Error; if article gets the option
    'twocolumn', the whole layout will be corrupted!}}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOptionKey}{article}}
\ProcessKeyvalOptions*


\LoadClass{article}
\PassOptionsToPackage{T1}{fontenc}
\RequirePackage{hyperref}
\RequirePackage{fontenc}
\RequirePackage{libertine}
\RequirePackage{suffix}
\PassOptionsToPackage{fleqn}{amsmath}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{multicol}
\PassOptionsToPackage{autostyle,german=guillemets}{csquotes}
\RequirePackage{csquotes}

\RequirePackage{xcolor}
\definecolor{primaryColor}{cmyk}{1,.72,0,.38}
\definecolor{secondaryColor}{named}{gray}

\RequirePackage{mdframed}

\RequirePackage{listings}
\lstset{
  breaklines = true,
  postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookrightarrow\space}},
  basicstyle=\ttfamily\color{primaryColor}\scriptsize
}
\RequirePackage{etoolbox}
\pagestyle{empty}
\setcounter{secnumdepth}{0}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt plus 0.5ex}
\AtBeginDocument{%\bgroup % POSSIBLY BUG FIX:Include this command if
                          % you should ever encounter the later error
                          % at the first time of compilation (with
                          % removed .aux)
 %! LaTeX Error: Can be used only in preamble.
 %See the LaTeX manual or LaTeX Companion for explanation.
 %Type  H <return>  for immediate help.
 %...
 %
 %l.6 \HyperFirstAtBeginDocument
 %                             {\ifx\hyper@anchor\@undefined
  \begin{multicols}{\cs@columns}}
\AtEndEnvironment{document}{\end{multicols}}
\AtBeginDocument{
  \raggedright
  %footnotesize
}
\RequirePackage{geometry}
\geometry{top=1cm, bottom=1cm, left=1cm,
  headsep=14pt,hmarginratio={1:1}}
\renewcommand{\theequation}{\Roman{equation}}
\everymath\expandafter{\the\everymath \color{primaryColor}}
\renewcommand{\title}[1]{
  \def\thetitle{#1}
}

\renewcommand{\date}[1]{
  \def\thedate{#1}
}
\renewcommand{\author}[1]{
  \def\theauthor{#1}
}

\renewcommand{\maketitle}{
  \begin{mdframed}[
    linecolor=secondaryColor,linewidth=1pt,%
    leftmargin=0mm,rightmargin=0mm,skipbelow=0mm,skipabove=0mm
    ]
    {\color{primaryColor}\Large\textbf\sffamily\thetitle}\\
    \normalsize\theauthor\\
    \normalsize\thedate\\
  \end{mdframed}

  {\color{secondaryColor} \rule{\linewidth}{1pt}}
}
\renewcommand{\section}{\@startsection{section}{1}{0mm}%
                                {-1ex plus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%x
                                {\normalfont\large\bfseries\sffamily\color{primaryColor}}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
                                {-1explus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%
                                {\normalfont\normalsize\sffamily\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
  {-1ex plus -.5ex minus -.2ex}%
  {1ex plus .2ex}%
  {\normalfont\small\sffamily}}
\endinput
%%
%% End of file `cheatsheet.cls'.
