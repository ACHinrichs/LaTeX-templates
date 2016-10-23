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
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[RE,LO]{\thepage}
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

\def\@abgabe{\today}

\newcommand{\abgabe}[1]{\def\@abgabe{#1}}

\renewcommand{\maketitle} {
\begin{centering}
\Huge{\textbf{\@kurs}}\\
\vspace{.5cm}
{\hrule height 2pt}
\vspace{.5cm}
\large
Datum: \@date\\
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

\newcounter{aufgaben}
\setcounter{aufgaben}{1}
\newcommand{\newexercise}{\section*{Aufgabe \arabic{aufgaben}} \addtocounter{aufgaben}{1}}
\newcommand{\exercise}[1]{\section*{#1}}
\newcommand{\solution}{\subsection*{L\"osung}}
\newcommand{\proof}{\subsection*{Beweis}}

\endinput
%ToDo: Besipieldokument erstellen und ausgabe ansehehn