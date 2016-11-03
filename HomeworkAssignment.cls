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

\RequirePackage{suffix}
\RequirePackage{fancyhdr}
\RequirePackage{ifthen}
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
\setcounter{problem}{0}
\newcounter{subproblem}[problem]
\setcounter{subproblem}{0}
\newcounter{subsubproblem}[subproblem]
\setcounter{subsubproblem}{0}

\newcommand{\problem}[1]{\@startsection{problem}%Name
					{1}%Level
					{\z@}%indent
					{-2em \@plus -1em \@minus -1em}%beforeskip
					{1ex \@plus .5ex}%afterskip
					{\normalfont\Large\bfseries}%style
					*{#1}}
\newcommand{\newproblem}[1][]{\stepcounter{problem}
  \ifthenelse{\equal{#1}{}}
             { }
             {\setcounter{problem}{#1}}
             \problem{Aufgabe \arabic{problem}}
}
\newcommand{\subproblem}[1]{\@startsection{subproblem}%Name
					{2}%Level
					{\z@}%indent
					{-1em \@plus -.5em \@minus -.5em}%beforeskip
					{.5ex \@plus .5ex}%afterskip
					{\normalfont\large\bfseries}%style
					*{#1}}
\newcommand{\newsubproblem}[1][]{\stepcounter{subproblem}
  \ifthenelse{\equal{#1}{}}
             { }
             {\setcounter{subproblem}{#1}}
             \subproblem{Aufgabe \arabic{problem}.\alph{subproblem}}
}

\newcommand{\subsubproblem}[1]{\@startsection{subsubproblem}%Name
					{3}%Level
					{\z@}%indent
					{-.5em}%beforeskip
					{.5em}%afterskip
					{\normalfont\bfseries}%style
					*{#1}}

\newcommand{\newsubsubproblem}[1][]{\stepcounter{subsubproblem}
  \ifthenelse{\equal{#1}{}}
             { }
             {\setcounter{subsubproblem}{#1}}
             \subproblem{\roman{subsubproblem})}
}

\newcommand{\solution}{\@startsection{solution}%Name
					{4}%Level
					{\parindent}%indent
					{-.1em}%beforeskip
					{\z@}%afterskip
					{\normalfont\bfseries}%style
					*{L\"osung:~~}}
\newcommand{\proof}{\@startsection{proof}%Name
					{4}%Level
					{\parindent}%indent
					{-.1em}%beforeskip
					{\z@}%afterskip
					{\normalfont\bfseries}%style
					*{Beweis:~~}}

\endinput
%ToDo: Besipieldokument erstellen und ausgabe ansehehn
