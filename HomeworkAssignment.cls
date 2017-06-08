%%
%% This is file `HomeworkAssignment.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% HomeworkAssignment.dtx  (with options: `class')
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
\def\fileversion{v2.1c}
\def\filedate{2017/06/08}
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{HomeworkAssignment}[\filedate\space\fileversion]
\RequirePackage{kvoptions}
\SetupKeyvalOptions{ family=hwa,
  prefix=hwa@ }
\DeclareStringOption[arabic]{problemsty}
\DeclareStringOption[alph]{subproblemsty}
\DeclareStringOption[roman]{subsubproblemsty}
\DeclareBoolOption[false]{listings}
\DeclareStringOption[v2]{design}
\DeclareBoolOption[true]{twoside}
\DeclareComplementaryOption{oneside}{twoside}
\DeclareBoolOption[true]{twocolumn}
\DeclareComplementaryOption{onecolumn}{twocolumn}
\DeclareBoolOption[false]{tikz}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOptionKey}{article}}
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
\RequirePackage{suffix}
\RequirePackage{fancyhdr}
\RequirePackage{ifthen}
\RequirePackage{translations}
\PassOptionsToPackage{fleqn}{amsmath}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
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
\RequirePackage{etoolbox}
\RequirePackage{array}
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
 % Make sure that this is the last Package loaded
\ifthenelse{\equal{\hwa@design}{v2}}{
  \RequirePackage{geometry}
  \ifhwa@twocolumn
  \geometry{top=2cm, bottom=2cm, left=2cm,
    headsep=14pt,hmarginratio={1:1}}
  \else
  \geometry{top=2cm, bottom=2cm, width=35em,
    headsep=14pt,hmarginratio={4:3}}
  \fi
}{
  \ifthenelse{\equal{\hwa@design}{v1}}{
    \empty
  }{
    \ClassError{HomeworkAssignment}{Value '\hwa@design' for key 'design'
    is not known}{The option design takes an argument to set the
    Pagestyle to the one of a previous version. Acceptable values are
    'v1', or 'v2'}
  }
}%    \end{macrocode}
\DeclareTranslationFallback{aufgabe}{Aufgabe}
\DeclareTranslationFallback{loesung}{L\"osung}
\DeclareTranslationFallback{beweis}{Beweis}
\DeclareTranslationFallback{uebungsgruppe}{\"Ubungsgruppe}
\DeclareTranslationFallback{abgabe}{Abgabe}
\DeclareTranslationFallback{zuZeigen}{Zu zeigen}
\DeclareTranslationFallback{gegeben}{Gegeben}
\DeclareTranslationFallback{falls}{falls}
\DeclareTranslationFallback{Falls}{Falls}

\DeclareTranslation{German}{aufgabe}{Aufgabe}
\DeclareTranslation{German}{loesung}{L\"osung}
\DeclareTranslation{German}{beweis}{Beweis}
\DeclareTranslation{German}{uebungsgruppe}{\"Ubungsgruppe}
\DeclareTranslation{German}{abgabe}{Abgabe}
\DeclareTranslation{German}{zuZeigen}{Zu zeigen}
\DeclareTranslation{German}{gegeben}{Gegeben}
\DeclareTranslation{German}{falls}{falls}
\DeclareTranslation{German}{Falls}{Falls}

\DeclareTranslation{English}{aufgabe}{Problem}
\DeclareTranslation{English}{loesung}{Solution}
\DeclareTranslation{English}{beweis}{Proof}
\DeclareTranslation{English}{uebungsgruppe}{Tutorial}
\DeclareTranslation{English}{abgabe}{Deadline}
\DeclareTranslation{English}{zuZeigen}{To show}
\DeclareTranslation{English}{gegeben}{Given}
\DeclareTranslation{English}{falls}{if}
\DeclareTranslation{English}{Falls}{If}
\fancypagestyle{firstpage}{
  %
  \fancyhf{}
  % clear all six fields
  \renewcommand{\headrulewidth}{.7pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyfoot[R]{\thepage}
  \fancyhead[L]{\hwa@tutorium}
  \fancyhead[R]{\@date } }
\fancypagestyle{followingpage}{
  %
  \fancyhf{}

  \ifthenelse{\equal{\hwa@design}{v2}}{
    \ifhwa@twoside % IF

    \fancyhead[RO]{\@author}
    \fancyhead[LO]{\hwa@kurs\\
      \hwa@tutorium}
    \fancyhead[LE]{\GetTranslation{abgabe}: \hwa@abgabe}
    \fancyfoot[RO,LE]{\thepage}

    \else %ELSE

    \fancyhead[R]{\hwa@kurs\\
      \@author}
    \fancyhead[L]{\hwa@tutorium\\
      \GetTranslation{abgabe}: \hwa@abgabe}
    \fancyfoot[R]{\thepage}
    \fi %ENDIF
  }{
    \ifthenelse{\equal{\hwa@design}{v1}}{
      \fancyhead[RE,LO]{\@author}
      \fancyhead[LE,RO]{\hwa@kurs\\
        \GetTranslation{abgabe}: \hwa@abgabe}
      \fancyfoot[RE,LO]{\thepage}
    }{
      \ClassError{HomeworkAssignment}{Value '\hwa@design' for key 'design'
        is not known}{The option design takes an argument to set the
        Pagestyle to the one of a previous version. Acceptable values are
        'v1', or 'v2'}
    }
  }

  \renewcommand{\headrulewidth}{0.7pt}
  \renewcommand{\footrulewidth}{0pt} } \pagestyle{followingpage}
\renewcommand{\theequation}{\Roman{equation}}
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
            \ClassError{HomeworkAssignment}{Invalid Value #1 for
              option Counter-Styling}{Possible Values are alph,
              arabic, Arabic, roman or Roman.}  } } } } } }
\hwa@parseCounterStyle{\hwa@problemsty}{\hwa@problemno}{problem}
\hwa@parseCounterStyle{\hwa@subproblemsty}{\hwa@subproblemno}{subproblem}
\hwa@parseCounterStyle{\hwa@subsubproblemsty}{\hwa@subsubproblemno}{subsubproblem}
\edef\hwa@gradingtbl@aux@defs{}
\newcommand{\hwa@gradingtbl@aux@lineOne}{}
\newcommand{\hwa@gradingtbl@aux@lineTwo}{}

\edef\hwa@gradingtbl@defs{}
\newcommand{\hwa@gradingtbl@lineOne}{}
\newcommand{\hwa@gradingtbl@lineTwo}{}
\newcommand{\addToGradingTbl}[1]{
  \edef\hwa@gradingtbl@aux@defs{\hwa@gradingtbl@aux@defs|p{1cm}}
  \edef\hwa@gradingtbl@aux@lineOne{\hwa@gradingtbl@aux@lineOne#1 &}
  \edef\hwa@gradingtbl@aux@lineTwo{\hwa@gradingtbl@aux@lineTwo   &}
}
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
\newcommand{\makeGradingTbl}{
  \begin{table}[hb]
    \centering
    \large
    \expandafter\tabular\expandafter{\hwa@gradingtbl@defs |p{1cm}|}\hline
    \hwa@gradingtbl@lineOne  $\Sigma$    \\\hline
    \hwa@gradingtbl@lineTwo  \vpace{.15cm}~\\\hline
    \endtabular
  \end{table}
  }
\newcommand{\hwa@kurs}{?\GetTranslation{subject}?}
\newcommand{\subject}[1]{\renewcommand{\hwa@kurs}{#1}}
\newcommand{\kurs}[1]{\subject{#1}}
\newcommand{\hwa@tutorium}{?\GetTranslation{uebungsgruppe}?}
\newcommand{\tutorial}[1]{\renewcommand{\hwa@tutorium}{#1}}
\newcommand{\tutorium}[1]{\tutorial{#1}}
\newcommand{\hwa@abgabe}{\today}
\newcommand{\deadline}[1]{\def\hwa@abgabe{#1}}
\newcommand{\abgabe}[1]{\deadline{#1}}

\renewcommand{\maketitle} {
  \thispagestyle{firstpage}
  \setlength{\headheight}{25pt}
  \twocolumn[{%
    \begin{centering}
      \huge{\textbf{\hwa@kurs}} \vspace{.25cm} {\hrule height 2pt}
      \vspace{.25cm} \large
      \GetTranslation{abgabe}: \hwa@abgabe\\
      \vspace{.5cm} \hrule \vspace{.25cm}
      \normalsize{\@author}\\
      \vspace{.25cm} \hrule \vspace{.25cm} \normalsize
    \end{centering}
  }]
}
\newcounter{problem} \setcounter{problem}{0}
\newcounter{subproblem}[problem] \setcounter{subproblem}{0}
\newcounter{subsubproblem}[subproblem] \setcounter{subsubproblem}{0}

\newcommand{\problem}[1]{\@startsection{problem}%Name
  {1}%Level
  {\z@}%indent
  {-2em \@plus -1em \@minus -1em}%beforeskip
  {1ex \@plus .5ex}%afterskip
  {\normalfont\Large\bfseries}%style
  *{#1} \addcontentsline{toc}{section}{#1}
}

\newcommand{\subproblem}[1]{\@startsection{subproblem}%Name
  {2}%Level
  {\z@}%indent
  {-1em \@plus -.5em \@minus -.5em}%beforeskip
  {.5ex \@plus .5ex}%afterskip
  {\normalfont\large\bfseries}%style
  *{#1} \addcontentsline{toc}{subsection}{#1} }

\newcommand{\subsubproblem}[1]{\@startsection{subsubproblem}%Name
  {3}%Level
  {\z@}%indent
  {-.5em}%beforeskip
  {.5em}%afterskip
  {\normalfont\bfseries}%style
  *{#1} }

\newcommand{\solution}[1][]{\@startsection{solution}%Name
  {4}%Level
  {\parindent}%indent
  {-.1em}%beforeskip
  {\z@}%afterskip
  {\normalfont\bfseries}%style
  *{\GetTranslation{loesung}\ifthenelse{\equal{#1}{}} {} { #1}:~~ } }

\newcommand{\proof}[1][]{\@startsection{proof}%Name
  {4}%Level
  {\parindent}%indent
  {-.1em}%beforeskip
  {\z@}%afterskip
  {\normalfont\bfseries}%style
  *{\GetTranslation{beweis}\ifthenelse{\equal{#1} {} } {} { #1}:~~ } }

\newcommand{\toShow}[1][]{\@startsection{to show}%Name
  {4}%Level
  {\parindent}%indent
  {-.1em}%beforeskip
  {\z@}%afterskip
  {\normalfont\bfseries}%style
  *{\GetTranslation{zuZeigen}\ifthenelse{\equal{#1} {} } {} { #1}:~~ } }

\newcommand{\given}[1][]{\@startsection{given}%Name
  {4}%Level
  {\parindent}%indent
  {-.1em}%beforeskip
  {\z@}%afterskip
  {\normalfont\bfseries}%style
  *{\GetTranslation{gegeben}\ifthenelse{\equal{#1} {} } {} { #1}:~~ } }


\newcommand{\newproblem}[1][]{\stepcounter{problem}
  \newproblem*[#1]
  \addToGradingTbl{\# \hwa@problemno}
}

\WithSuffix\newcommand\newproblem*[1][]{\stepcounter{problem}
  \ifthenelse{\equal{#1}{}} { } {\setcounter{problem}{#1}}
  \problem{\GetTranslation{aufgabe} \hwa@problemno}
}

\newcommand{\newsubproblem}[1][]{\stepcounter{subproblem}
  \ifthenelse{\equal{#1}{}} { } {\setcounter{subproblem}{#1}}
  \subproblem{\GetTranslation{aufgabe} \hwa@problemno{}.\hwa@subproblemno} }

\newcommand{\newsubsubproblem}[1][]{\stepcounter{subsubproblem}
  \ifthenelse{\equal{#1}{}} { } {\setcounter{subsubproblem}{#1}}
  \subsubproblem{\hwa@subsubproblemno)} }

\newcommand{\QED}{\begin{flushright}
    \textit{QED}
  \end{flushright}
}
\newcommand{\EOP}{\begin{flushright}
    $\square$
  \end{flushright}
}
\newcommand{\eop}{\hfill$\blacksquare$}
\newcommand{\QNED}{\begin{flushright}
    $\triangle$
  \end{flushright}
}
\newcommand{\qned}{\hfill$\triangle$}
\newcommand{\floor}[1]{\ensuremath{\left\lfloor #1 \right\rfloor}}
\newcommand{\ceil}[1]{\ensuremath{\left\lceil #1 \right\rceil}}
\newcommand{\roundHU}[1]{\ensuremath{\left\lceil #1 \right\rfloor}}
\newcommand{\roundHD}[1]{\ensuremath{\left\lfloor #1 \right\rceil}}
\newcommand{\N}{\ensuremath{\mathbb{N}}}
\newcommand{\Z}{\ensuremath{\mathbb{Z}}}
\newcommand{\R}{\ensuremath{\mathbb{R}}}
\newcommand{\Q}{\ensuremath{\mathbb{Q}}}
\newcommand{\C}{\ensuremath{\mathbb{C}}}
\newcommand{\F}{\ensuremath{\mathbb{F}}}
\newcommand{\Primes}{\ensuremath{\mathbb{P}}}
\newcommand{\GL}{\ensuremath{\text{GL}}}
\newcommand{\id}{\ensuremath{\text{id}}}
\newcommand{\diff}[1]{\ensuremath{\frac{d}{d#1}}}
\newcommand{\dx}{\:dx}

\newcommand{\divides}{\ensuremath{\ |\ }}
\newcommand{\property}{\ensuremath{\ |\ }}

\newcommand{\Var}{\ensuremath{\text{Var}}}
\newcommand{\Perm}{\ensuremath{\text{Perm}}}
\newcommand{\MComb}{\ensuremath{\text{MComb}}}
\newcommand{\Comb}{\ensuremath{\text{Comb}}}

\renewcommand{\dim}[1][]{\ensuremath{\text{dim}_{#1}\ }}
\renewcommand{\Im}{\ensuremath{\text{Im}\ }}

\newcommand{\Pot}{\ensuremath{\text{Pot}}}
\newcommand{\Map}{\ensuremath{\text{Map}}}

\newcommand{\excup}{\ensuremath{\stackrel{.}{\cup}}}

\newcommand{\falls}{\text{\ \GetTranslation{falls}}\ }

\newcommand{\Bin}{\ensuremath{\text{Bin}\ }}
\let\oforall\forall
\let\oexists\exists
\renewcommand{\forall}{\ensuremath{\hskip 2pt \oforall \hskip 2pt}}
\renewcommand{\exists}{\ensuremath{\hskip 2pt \oexists \hskip 2pt}}
\newcommand{\bigforall}{\mbox{\raisebox{-2pt}[\height][\depth]{\Large $\mathsurround4pt\forall$}}}
\newcommand{\bigexists}{\mbox{\raisebox{-2pt}[\height][\depth]{\Large $\mathsurround4pt\exists$}}}
\endinput
%%
%% End of file `HomeworkAssignment.cls'.
