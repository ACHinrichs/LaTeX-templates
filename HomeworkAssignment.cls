% Assignment.sty
%  LaTeX-Template for Assignments, specifically for Computer Science studies.
% Based uppon this Guide: http://tutex.tug.org/pracjourn/2005-4/hefferon/hefferon.pdf by Jim Hefferon
% --- Class structure: identification part
% ---
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{HomeworkAssignment}[2016/10/23]

\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{
%
\PassOptionsToClass{\CurrentOption}{article}}}

\ProcessOptions \relax

\LoadClass{article}

\RequirePackage{fancyhdr}
\fancypagestyle{firstpage}{
%
\fancyhf{}
% clear all six fields
\renewcommand{\headrulewidth}{.7pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[RE,LO]{\thepage}
\fancyhead[L]{\@tutorium }
\fancyhead[R]{\@date }
}
\fancypagestyle{followingpage}{
%
\fancyhf{}
% clear all six fields
\fancyhead[RE,LO]{\@author}
\fancyhead[LE,RO]{\@kurs\\ Abgabe: \@abgabe}
\fancyfoot[RE,LO]{\thepage}
\renewcommand{\headrulewidth}{0.7pt}
\renewcommand{\footrulewidth}{0pt}
}
\pagestyle{followingpage}
\AtBeginDocument{\thispagestyle{firstpage}}

%\LoadClass[10pt,a4paper]{article}

\def\@kurs{Kein Kurs}
\newcommand{\kurs}[1]{\def\@kurs{#1}}

\def\@tutorium{}
\newcommand{\tutorium}[1]{\def\@tutorium{#1}}

\def\@abgabe{\today}

\newcommand{\abgabe}[1]{\def\@abgabe{#1}}

\renewcommand{\maketitle} {
\begin{centering}
\huge{\textbf{\@kurs}}
{\hrule height 2pt}
\vspace{.25cm}
\large
Abgabe: \@abgabe\\
\vspace{.5cm}
\hrule
\vspace{.25cm}
\normalsize{\@author}\\
\vspace{.25cm}
\hrule
\vspace{.25cm}
\normalsize
\end{centering}
}

\newcounter{problem}
\setcounter{problem}{1}
\newcounter{subproblem}[problem]
\setcounter{subproblem}{0}
\newcounter{subsubproblem}[subproblem]
\setcounter{subsubproblem}{0}
\newcommand{\problem}[1]{
\LARGE 
\vspace*{1em} 
\pagebreak[2] 
\noindent \textbf{#1} 
\nopagebreak \vspace{1ex} 
\nopagebreak \newline 
\normalsize}
\newcommand{\newproblem}{\problem{Aufgabe \arabic{problem}} \stepcounter{problem}}
\newcommand{\subproblem}[1]{
\pagebreak[2]
\large 
\break
%\vspace*{1em}
\noindent \textbf{#1}
 \newline
%\nopagebreak[4]
%\nopagebreak[4]
%\nopagebreak[4]
 \normalsize}
\newcommand{\newsubproblem}{\subproblem{Aufgabe \stepcounter{subproblem} \arabic{problem}.\alph{subproblem}}}
\newcommand{\subsubproblem}[1]{
\vspace*{1em}
\textbf{#1}
\nopagebreak
\vspace{1ex}}
\newcommand{\newsubsubproblem}{ \stepcounter{subsubproblem} \subsubproblem{(\roman{subsubproblem})}}
\newcommand{\solution}{\ \newline \textbff{L\"osung}}
\newcommand{\proof}{\ \newline \textbff{L\"osung}}

\endinput
%ToDo: Besipieldokument erstellen und ausgabe ansehehn
