%%
%% This is file `homeworkassignment.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% homeworkassignment.dtx  (with options: `class')
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
\def\fileversion{v3.1a}
\def\filedate{2018/11/29}
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{homeworkassignment}[\filedate\space\fileversion]
\RequirePackage{suffix}
\RequirePackage{fancyhdr}
\RequirePackage{xifthen}
\RequirePackage{translations}
\PassOptionsToPackage{fleqn}{amsmath}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{etoolbox}
\RequirePackage{array}
\RequirePackage{xparse}
\RequirePackage{ifxetex}

\RequirePackage{wasysym}
\RequirePackage{adjustbox}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{ family=hwa,
  prefix=hwa@ }
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOptionKey}{article}}
\DeclareStringOption[arabic]{problemsty}
\DeclareStringOption[alph]{subproblemsty}
\DeclareStringOption[roman]{subsubproblemsty}
\DeclareBoolOption[false]{tikz}
\DeclareBoolOption[false]{listings}
\DeclareBoolOption[true]{twoside}
\DeclareComplementaryOption{oneside}{twoside}
\DeclareBoolOption[true]{twocolumn}
\DeclareComplementaryOption{onecolumn}{twocolumn}
\DeclareStringOption[all]{hlines}
\ifxetex
\DeclareBoolOption[true]{unicodemath}
\else
\DeclareBoolOption[false]{unicodemath}
\fi
\ProcessKeyvalOptions*
\ifhwa@twoside
\PassOptionsToClass{twoside}{article}
\else
\PassOptionsToClass{oneside}{article}
\fi
\ifhwa@twocolumn
\PassOptionsToClass{twocolumn}{article}
\else
\PassOptionsToClass{onecolumn}{article}
\fi
\LoadClass{article}

\ifhwa@listings
\RequirePackage{listings}
\lstset{
  frame = single,
  breaklines = true,
  postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookrightarrow\space}},
  basicstyle=\scriptsize
}
\else
\empty
\fi

\newcommand{\hwa@hline@LONE}{\vspace{.25cm} {\hrule height 2pt}
  \vspace{.25cm}}
\newcommand{\hwa@hline@LTWO}{\vspace{.5cm} \hrule \vspace{.25cm}}
\newcommand{\hwa@headrulewidth}{.7pt}
\ifthenelse{\equal{\hwa@hlines}{all}}{
  \renewcommand{\hwa@hline@LONE}{\vspace{.25cm} {\hrule height 2pt}
    \vspace{.25cm}}
  \renewcommand{\hwa@headrulewidth}{.7pt}
  \renewcommand{\hwa@hline@LTWO}{\vspace{.5cm} \hrule \vspace{.25cm}}
}{
  \ifthenelse{\equal{\hwa@hlines}{decreased}}{
    \renewcommand{\hwa@hline@LONE}{ \vspace{.25cm} {\hrule height 2pt}
      \vspace{.25cm}}
    \renewcommand{\hwa@headrulewidth}{.7pt}
  }{\ifthenelse{\equal{\hwa@hlines}{header}}{
      \renewcommand{\hwa@headrulewidth}{.7pt}
    }{\ifthenelse{\equal{\hwa@hlines}{none}}{
        \renewcommand{\hwa@headrulewidth}{0pt}
      }{
        \ClassError{homeworkassignment}{Value '\hwa@lines' for key 'hlines'
          is not known}{The option hlines takes an argument to set which
          hlines are drawn. Possible values are 'all','decreased' , 'header', and
          'none'. 'all' is standard.}
      }
    }
    \renewcommand{\hwa@hline@LONE}{~\\\vspace{.5cm}}
  }
  \renewcommand{\hwa@hline@LTWO}{\vspace{.75cm}}
}
\ifhwa@tikz
\RequirePackage{tikz}
\usetikzlibrary{shapes,arrows,positioning,decorations,
  automata,backgrounds,petri,bending,
  shapes.multipart}
\tikzset{
  treenode/.style = {shape=circle, rounded corners,
    draw, align=center},
  graynode/.style = {fill=gray},
  normalnode/.style     = {treenode, font=\Large, bottom color=white},
  array/.style = {rectangle split,
    rectangle split horizontal,
    rectangle split,
    draw}
}
\fi
\RequirePackage{geometry}
\ifhwa@twocolumn
\geometry{top=2cm, bottom=2cm, left=2cm,
    headsep=14pt,hmarginratio={1:1}}
\else
\geometry{top=2cm, bottom=2cm, width=35em,
  headsep=14pt,hmarginratio={4:3}}
\fi
\fancypagestyle{firstpage}{
  %
  \fancyhf{}
  % clear all six fields
  \renewcommand{\headrulewidth}{\hwa@headrulewidth}
  \renewcommand{\footrulewidth}{0pt}
  \fancyfoot[R]{\thepage}
  \fancyhead[L]{\hwa@tutorium}
  \fancyhead[R]{\@date } }
\fancypagestyle{followingpage}{
  \fancyhf{}
  \ifhwa@twoside % IF
  \fancyhead[RO]{\@author}
  \fancyhead[LO]{\hwa@kurs\\
    \hwa@tutorium}
  \fancyhead[LE]{
    \ifthenelse{\equal{\hwa@sheetTitle}{}}{}{\hwa@sheetTitle\\}
    \GetTranslation{abgabe}: \hwa@abgabe
  }
  \fancyfoot[RO,LE]{\thepage}

  \else %ELSE

  \fancyhead[R]{\hwa@kurs\\
    \@author}
  \fancyhead[L]{\hwa@tutorium\\
    \ifthenelse{\equal{\hwa@sheetTitle}{}}{}{\hwa@sheetTitle\\}
    \GetTranslation{abgabe}: \hwa@abgabe}
  \fancyfoot[R]{\thepage}
  \fi %ENDIF
  \renewcommand{\headrulewidth}{\hwa@headrulewidth}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{followingpage}
\renewcommand{\theequation}{\Roman{equation}}
\allowdisplaybreaks

\ifthenelse{\boolean{xetex}}{
  \RequirePackage{fontspec}
  \setsansfont{Gillius ADF}
}{
  \RequirePackage{gillius2}
}
\newcommand{\hwa@pointboxsize}{3em}
\newcommand{\hwa@kurs}{?\GetTranslation{subject}?} % To store the value
\newcommand{\subject}[1]{\renewcommand{\hwa@kurs}{#1}}
\newcommand{\kurs}[1]{\subject{#1}}
\newcommand{\hwa@tutorium}{?\GetTranslation{uebungsgruppe}?} % To store the value
\newcommand{\tutorial}[1]{\renewcommand{\hwa@tutorium}{#1}}
\newcommand{\tutorium}[1]{\tutorial{#1}}
\newcommand{\hwa@abgabe}{\today} % To store the value
\newcommand{\deadline}[1]{\def\hwa@abgabe{#1}}
\newcommand{\abgabe}[1]{\deadline{#1}}
\newcommand{\hwa@sheetTitle}{}
\newcommand{\sheetTitle}[1]{\def\hwa@sheetTitle{#1}}
\DeclareDocumentCommand\problem{m o}{\@startsection{problem}%Name
  {1}%Level
  {\z@}%indent
  {-2em \@plus -1em \@minus -1em}%beforeskip
  {1ex \@plus .5ex}%afterskip
  {\normalfont\Large \sffamily\bfseries}%style
  *{#1
    \IfNoValueF{#2}{
      \hfill
     \frame{\framebox[\hwa@pointboxsize]{
         \hfill \normalfont{\large/\small{#2}}}}
    }
  }
  \addcontentsline{toc}{section}{#1}
}

\DeclareDocumentCommand\subproblem{m o}{\@startsection{subproblem}%Name
  {2}%Level
  {\z@}%indent
  {-1em \@plus -.5em \@minus -.5em}%beforeskip
  {.5ex \@plus .5ex}%afterskip
  {\normalfont\large \sffamily\bfseries}%style
  *{#1
    \IfNoValueF{#2}{
      \hfill \framebox[\hwa@pointboxsize]{
        \hfill\normalfont\large/\small{#2}}
    }
  }
  \addcontentsline{toc}{subsection}{#1}
}

\DeclareDocumentCommand\subsubproblem{m o}{\@startsection{subsubproblem}%Name
  {3}%Level
  {\z@}%indent
  {-.5em}%beforeskip
  {.5em}%afterskip
  {\normalfont \sffamily\bfseries}%style
  *{#1
    \IfNoValueF{#2}{
      \hfill \framebox[\hwa@pointboxsize]{
        \hfill\normalfont\large/\scriptsize{#2}}
    }
  }
}

\newcommand{\keyword}[1]{\@startsection{keyword}%Name
  {4}%Level
  {\parindent}%indent
  {-.1em}%beforeskip
  {\z@}%afterskip
  {\normalfont \sffamily\bfseries}%style
  *{#1~~}
}
\newcommand{\solution}[1][]{\keyword{\GetTranslation{loesung}\ifstrempty{#1}{}{~#1}:}}
\newcommand{\toShow}[1][]{\keyword{\GetTranslation{zuZeigen}\ifstrempty{#1}{}{~#1}:}}
\newcommand{\toDisprove}[1][]{
  \keyword{\GetTranslation{zuWiderlegen}\ifstrempty{#1}{}{~#1}:}}
\newcommand{\given}[1][]{\keyword{\GetTranslation{gegeben}\ifstrempty{#1}{}{~#1}:}}
\newcommand{\assumption}[1][]{\keyword{\GetTranslation{Annahme}\ifstrempty{#1}{}{~#1}:}}
\newcommand{\supposeThat}[1][]{\keyword{\GetTranslation{Angenommen-dass}\ifstrempty{#1}{}{~#1}}}
\newcounter{problem} \setcounter{problem}{0}
\newcounter{subproblem}[problem] \setcounter{subproblem}{0}
\newcounter{subsubproblem}[subproblem] \setcounter{subsubproblem}{0}

\DeclareDocumentCommand\newproblem{O{} g}{
  \stepcounter{problem}% to reset the lower counters
  \ifthenelse{\equal{#1}{}}{
    % empty
  }{
    \setcounter{problem}{#1}
  }

  \IfNoValueTF{#2}{
    \problem{\GetTranslation{aufgabe} \hwa@problemno}
    \addToGradingTable{\# \hwa@problemno}
  }{
    \problem{\GetTranslation{aufgabe} \hwa@problemno}[#2]
    \addToGradingTable{\# \hwa@problemno}{/#2}
  }
}

\WithSuffix\newcommand\newproblem*[1][]{\stepcounter{problem}
  \ifthenelse{\equal{#1}{}} { } {
    \stepcounter{problem}% to reset the lower counters
    \setcounter{problem}{#1}}
  \problem{\GetTranslation{aufgabe} \hwa@problemno}
}

\DeclareDocumentCommand\newsubproblem{O{} g}{
  \stepcounter{subproblem}
  \ifthenelse{\equal{#1}{}} { } {
    \setcounter{subproblem}{#1}}
  \IfNoValueTF{#2}{
    \subproblem{\GetTranslation{aufgabe}
      \hwa@problemno{}.\hwa@subproblemno}
  }
  {
    \subproblem{\GetTranslation{aufgabe}
      \hwa@problemno{}.\hwa@subproblemno}[#2]
  }
}

\DeclareDocumentCommand\newsubsubproblem{O{} g}{
  \stepcounter{subsubproblem}
  \ifthenelse{\equal{#1}{}} { } {\setcounter{subsubproblem}{#1}}
  \IfNoValueTF{#2}{
    \subsubproblem{\hwa@subsubproblemno)}
  }
  {
    \subsubproblem{\hwa@subsubproblemno)}[#2]
  }
}

\newcommand{\hwa@QED}{\begin{flushright}
    \textsc{Qed}
  \end{flushright}
}
\newcommand{\QED}{\hwa@QED}

\ifhwa@unicodemath
 \RequirePackage{unicode-math}
\AtBeginDocument{\let\QEDSymbol\QED
  \renewcommand{\QED}{\hwa@QED}
}
\fi

\newcommand{\EOP}{\begin{flushright}
    \(\square\)
  \end{flushright}
}
\newcommand{\eop}{\hfill\(\blacksquare\)}
\newcommand{\QNED}{\begin{flushright} \(\triangle\)
  \end{flushright}
}
\newcommand{\qned}{\hfill\(\triangle\)}
\newcommand{\N}{\ensuremath{\mathbb{N}}}
\newcommand{\Z}{\ensuremath{\mathbb{Z}}}
\newcommand{\R}{\ensuremath{\mathbb{R}}}
\newcommand{\Q}{\ensuremath{\mathbb{Q}}}
\newcommand{\C}{\ensuremath{\mathbb{C}}}
\newcommand{\F}{\ensuremath{\mathbb{F}}}
\newcommand{\Primes}{\ensuremath{\mathbb{P}}}
\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\id}{id}
\DeclareMathOperator{\Var}{Var}
\DeclareMathOperator{\Perm}{Perm}
\DeclareMathOperator{\MComb}{MComb}
\DeclareMathOperator{\Comb}{Comb}
\DeclareMathOperator{\Pot}{Pot}
\DeclareMathOperator{\Map}{Map}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Ker}{Ker}
\DeclareMathOperator{\Intpol}{Intpol}
\DeclareMathOperator{\Pol}{Pol}
\DeclareMathOperator{\Sol}{Sol}
\DeclareMathOperator{\Bin}{Bin}
\DeclareMathOperator{\charakteristik}{char}
\DeclareMathOperator{\fo}{fo}
\DeclareMathOperator{\first}{fi}
\DeclareMathOperator{\la}{la}

\newcommand{\diff}[1]{\ensuremath{\frac{d}{d#1}}}
\newcommand{\partdiff}[1]{\ensuremath{\frac{\partial}{\partial#1}}}
\newcommand{\dx}{\:dx}
\newcommand{\divides}{\ensuremath{\ |\ }}
\newcommand{\property}{\ensuremath{\ |\ }}

\renewcommand{\dim}[1][]{\ensuremath{\text{dim}_{#1}\ }}
\renewcommand{\Im}{\ensuremath{\text{Im}\ }}

\newcommand{\excup}{\ensuremath{\stackrel{.}{\cup}}}
\newcommand{\falls}{\text{\ \GetTranslation{falls}}\ }
\newcommand{\floor}[1]{\ensuremath{\left\lfloor #1 \right\rfloor}}
\newcommand{\ceil}[1]{\ensuremath{\left\lceil #1 \right\rceil}}
\newcommand{\roundHU}[1]{\ensuremath{\left\lceil #1 \right\rfloor}}
\newcommand{\roundHD}[1]{\ensuremath{\left\lfloor #1 \right\rceil}}
\let\oforall\forall
\let\oexists\exists
\renewcommand{\forall}{\ensuremath{\hskip 2pt \oforall \hskip 2pt}}
\renewcommand{\exists}{\ensuremath{\hskip 2pt \oexists \hskip 2pt}}
\newcommand{\bigforall}{\mbox{\raisebox{-2pt}[\height][\depth]{\Large $\mathsurround4pt\forall$}}}
\newcommand{\bigexists}{\mbox{\raisebox{-2pt}[\height][\depth]{\Large $\mathsurround4pt\exists$}}}
\DeclareDocumentCommand\addToGradingTable{m g}{
  \edef\hwa@gradingtbl@aux@defs{\hwa@gradingtbl@aux@defs|p{\hwa@pointboxsize}}
  \edef\hwa@gradingtbl@aux@lineOne{\hwa@gradingtbl@aux@lineOne{#1} &}
  \IfNoValueTF{#2}{
    \edef\hwa@gradingtbl@aux@lineTwo{\hwa@gradingtbl@aux@lineTwo &}
  }{
    \edef\hwa@gradingtbl@aux@lineTwo{\hwa@gradingtbl@aux@lineTwo\vfill\hfill
      {\string\small #2} &}
  }
}
\DeclareDocumentCommand\makeGradingTable{o}{
  \begin{table}[hb]
    \centering
    \large
    \begin{adjustbox}{max width=\linewidth}
      \expandafter\tabular\expandafter{\hwa@gradingtbl@defs ||p{\hwa@pointboxsize}|}\hline
      \hwa@gradingtbl@lineOne  \(\Sigma\)       \\\hline\small
      \hwa@gradingtbl@lineTwo  \IfNoValueTF{#1}{~}{\vfill\hfill/#1}\vspace{.15cm}\\\hline
      \endtabular
    \end{adjustbox}
  \end{table}
  }
\edef\hwa@gradingtbl@aux@defs{}
\newcommand{\hwa@gradingtbl@aux@lineOne}{}
\newcommand{\hwa@gradingtbl@aux@lineTwo}{}

\edef\hwa@gradingtbl@defs{}
\newcommand{\hwa@gradingtbl@lineOne}{}
\newcommand{\hwa@gradingtbl@lineTwo}{}
\AtEndDocument{%
  \immediate\write\@auxout{%
    \gdef\string\hwa@gradingtbl@defs{\hwa@gradingtbl@aux@defs}
  }
  \immediate\write\@auxout{%
    \gdef\string\hwa@gradingtbl@lineOne{\hwa@gradingtbl@aux@lineOne}%
  }
  \immediate\write\@auxout{%
    \gdef\string\hwa@gradingtbl@lineTwo{\hwa@gradingtbl@aux@lineTwo}%
  }
}
\renewcommand{\maketitle} {
  \thispagestyle{firstpage}
  \ifhwa@twocolumn{
    \twocolumn[{
      \hwa@maketitletext
    }]
  }\else{
    \hwa@maketitletext
  }\fi
}
\newcommand{\hwa@maketitletext}{
  \begin{centering}
    \huge{\textsf{\textbf{\hwa@kurs}}}\hwa@hline@LONE \large
    \ifthenelse{\equal{\hwa@sheetTitle}{}}{}{\textsf{\hwa@sheetTitle}\\}
    \GetTranslation{abgabe}: \hwa@abgabe\\
    \hwa@hline@LTWO
    \normalsize{\@author}\\
    \hwa@hline@LTWO \normalsize
  \end{centering}
}
\newcommand{\hwa@problemno}{\arabic{problem}}
\newcommand{\hwa@subproblemno}{\alph{subproblem}}
\newcommand{\hwa@subsubproblemno}{\roman{subsubproblem}}
\newcommand{\hwa@parseCounterStyle}[3]{
  \ifthenelse{\equal{#1}{arabic}}{ \renewcommand{#2}{\arabic{#3}} }{
    \ifthenelse{\equal{#1}{roman}}{ \renewcommand{#2}{\roman{#3}} }{
      \ifthenelse{\equal{#1}{alph}}{ \renewcommand{#2}{\alph{#3}} }{
        \ifthenelse{\equal{#1}{Alph}}{ \renewcommand{#2}{\Alph{#3}} }{
          \ifthenelse{\equal{#1}{Roman}}{
            \renewcommand{#2}{\Roman{#3}} }{
            \ClassError{homeworkassignment}{Invalid Value #1 for
              option Counter-Styling}{Possible Values are alph,
              arabic, Arabic, roman or Roman.}  } } } } } }
\hwa@parseCounterStyle{\hwa@problemsty}{\hwa@problemno}{problem}
\hwa@parseCounterStyle{\hwa@subproblemsty}{\hwa@subproblemno}{subproblem}
\hwa@parseCounterStyle{\hwa@subsubproblemsty}{\hwa@subsubproblemno}{subsubproblem}
\NewDocumentEnvironment{proof}{G{\GetTranslation{beweis}} O{\QED}}
{
  \keyword{#1:~~}
}
{
  #2
}
\NewDocumentEnvironment{contradiction}{}
{
  \begin{proof}{\GetTranslation{beweis}~\GetTranslation{per}~\GetTranslation{Widerspruch}}[\hfill\lightning\\]
  }
  {
  \end{proof}
}
\DeclareTranslationFallback{aufgabe}{Aufgabe}
\DeclareTranslationFallback{loesung}{L\"osung}
\DeclareTranslationFallback{beweis}{Beweis}
\DeclareTranslationFallback{uebungsgruppe}{\"Ubungsgruppe}
\DeclareTranslationFallback{abgabe}{Abgabe}
\DeclareTranslationFallback{zuZeigen}{Zu zeigen}
\DeclareTranslationFallback{zuWiderlegen}{Zu widerlegen}
\DeclareTranslationFallback{gegeben}{Gegeben}
\DeclareTranslationFallback{falls}{falls}
\DeclareTranslationFallback{Annahme}{Annahme}
\DeclareTranslationFallback{Angenommen-dass}{Anngenommen, dass}
\DeclareTranslationFallback{per}{per}
\DeclareTranslationFallback{Widerspruch}{Widerspruch}

\DeclareTranslation{German}{aufgabe}{Aufgabe}
\DeclareTranslation{German}{loesung}{L\"osung}
\DeclareTranslation{German}{beweis}{Beweis}
\DeclareTranslation{German}{uebungsgruppe}{\"Ubungsgruppe}
\DeclareTranslation{German}{abgabe}{Abgabe}
\DeclareTranslation{German}{zuZeigen}{Zu zeigen}
\DeclareTranslation{German}{zuWiderlegen}{Zu widerlegen}
\DeclareTranslation{German}{gegeben}{Gegeben}
\DeclareTranslation{German}{falls}{falls}
\DeclareTranslation{German}{Falls}{Falls}
\DeclareTranslation{German}{Annahme}{Annahme}
\DeclareTranslation{German}{Angenommen-dass}{Anngenommen, dass}
\DeclareTranslation{German}{per}{per}
\DeclareTranslation{German}{Widerspruch}{Widerspruch}

\DeclareTranslation{English}{aufgabe}{Problem}
\DeclareTranslation{English}{loesung}{Solution}
\DeclareTranslation{English}{beweis}{Proof}
\DeclareTranslation{English}{uebungsgruppe}{Tutorial}
\DeclareTranslation{English}{abgabe}{Deadline}
\DeclareTranslation{English}{zuZeigen}{To show}
\DeclareTranslation{English}{zuWiderlegen}{To disprove}
\DeclareTranslation{English}{gegeben}{Given}
\DeclareTranslation{English}{falls}{if}
\DeclareTranslation{English}{Falls}{If}
\DeclareTranslation{English}{Annahme}{Assumption}
\DeclareTranslation{English}{Angenommen-dass}{Suppose that}
\DeclareTranslation{English}{per}{by}
\DeclareTranslation{English}{Widerspruch}{contradiction}
\endinput
%%
%% End of file `homeworkassignment.cls'.
