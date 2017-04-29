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

\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{HomeworkAssignment}
             [2017/04/29 v1.4 HomeworkAssignment]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax \LoadClass{article}
\RequirePackage{suffix} \RequirePackage{fancyhdr}
\RequirePackage{ifthen}

\fancypagestyle{firstpage}{
  %
  \fancyhf{}
  % clear all six fields
  \renewcommand{\headrulewidth}{.7pt}
  \renewcommand{\footrulewidth}{0pt} \fancyfoot[RE,LO]{\thepage}
  \fancyhead[L]{\hwa@tutorium } \fancyhead[R]{\@date } }
\fancypagestyle{followingpage}{
  %
  \fancyhf{}
  % clear all six fields
  \fancyhead[RE,LO]{\@author} \fancyhead[LE,RO]{\hwa@kurs\\ Abgabe:
    \hwa@abgabe} \fancyfoot[RE,LO]{\thepage}
  \renewcommand{\headrulewidth}{0.7pt}
  \renewcommand{\footrulewidth}{0pt} } \pagestyle{followingpage}
\AtBeginDocument{ \thispagestyle{firstpage}
  \setlength{\headheight}{25pt} }
\newcommand{\hwa@kurs}{Kein Kurs}
\newcommand{\subject}[1]{\renewcommand{\hwa@kurs}{#1}}
\newcommand{\kurs}[1]{\subject{#1}}
\newcommand{\hwa@tutorium}{}
\newcommand{\tutorial}[1]{\renewcommand{\hwa@tutorium}{#1}}
\newcommand{\tutorium}[1]{\tutorial{#1}}
\newcommand{\hwa@abgabe}{\today}
\newcommand{\deadline}[1]{\def\hwa@abgabe{#1}}
\newcommand{\abgabe}[1]{\deadline{#1}}

\renewcommand{\maketitle} {
  \begin{centering}
    \huge{\textbf{\hwa@kurs}} {\hrule height 2pt} \vspace{.25cm}
    \large
    Abgabe: \hwa@abgabe\\
    \vspace{.5cm} \hrule \vspace{.25cm}
    \normalsize{\@author}\\
    \vspace{.25cm} \hrule \vspace{.25cm} \normalsize
  \end{centering}
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
  *{#1}}

\newcommand{\subproblem}[1]{\@startsection{subproblem}%Name
  {2}%Level
  {\z@}%indent
  {-1em \@plus -.5em \@minus -.5em}%beforeskip
  {.5ex \@plus .5ex}%afterskip
  {\normalfont\large\bfseries}%style
  *{#1}}

\newcommand{\subsubproblem}[1]{\@startsection{subsubproblem}%Name
  {3}%Level
  {\z@}%indent
  {-.5em}%beforeskip
  {.5em}%afterskip
  {\normalfont\bfseries}%style
  *{#1}}

\newcommand{\solution}[1][]{\@startsection{solution}%Name
  {4}%Level
  {\parindent}%indent
  {-.1em}%beforeskip
  {\z@}%afterskip
  {\normalfont\bfseries}%style
  *{L\"osung\ifthenelse{\equal{#1}{}} {} { #1}:~~ } }

\newcommand{\proof}[1][]{\@startsection{proof}%Name
  {4}%Level
  {\parindent}%indent
  {-.1em}%beforeskip
  {\z@}%afterskip
  {\normalfont\bfseries}%style
  *{Beweis\ifthenelse{\equal{#1} {} } {} { #1}:~~ } }
\newcommand{\newproblem}[1][]{\stepcounter{problem}
  \ifthenelse{\equal{#1}{}} { } {\setcounter{problem}{#1}}
  \problem{Aufgabe \arabic{problem}} }

\newcommand{\newsubproblem}[1][]{\stepcounter{subproblem}
  \ifthenelse{\equal{#1}{}} { } {\setcounter{subproblem}{#1}}
  \subproblem{Aufgabe \arabic{problem}.\alph{subproblem}} }

\newcommand{\newsubsubproblem}[1][]{\stepcounter{subsubproblem}
  \ifthenelse{\equal{#1}{}} { } {\setcounter{subsubproblem}{#1}}
  \subproblem{\roman{subsubproblem})} }

\endinput
%%
%% End of file `HomeworkAssignment.cls'.
