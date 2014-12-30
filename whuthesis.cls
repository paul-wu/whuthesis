%% 这是武汉大学本科毕业论文模板类
%% Copyright (c) 2014 武大开源社区(WHUOSC).
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%
%   http://www.latex-project.org/lppl.txt
%
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% The Current Maintainer of this work is by WU Changlong<changlong1993@gmail.com>

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{whuthesis}[2014/12/29 v0.1 WHUTHESIS CJK LaTeX template class] % version information
%
\LoadClass[a4paper, titlepage, twoside]{report}
\RequirePackage{ifthen}
\usepackage{flushend}
\usepackage{xstring}
\RequirePackage{CJK, CJKnumb}
\RequirePackage{CJKpunct}
\RequirePackage{picins}
\RequirePackage{calc}
\usepackage[a4paper, total={5.827in, 8.3in}]{geometry}

%define chinese font
\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}    % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\li}{\CJKfamily{li}}        % 隶书
\newcommand{\you}{\CJKfamily{you}}      % 幼圆

\newlength\whuthesis@linespace
\newcommand{\whuthesis@choosefont}[3]{%
   \setlength{\whuthesis@linespace}{#1*\real{\baselinestretch}}%
   \fontsize{#1}{\whuthesis@linespace plus#2 minus #3}\selectfont}

%fontsize
\newcommand\zihao[1]{%
   \ifthenelse{\equal{#1}{0}}{%
       \aas@choosefont{42bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{0-}}{%
       \whuthesis@choosefont{36bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1}}{%
       \whuthesis@choosefont{26bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1-}}{%
       \whuthesis@choosefont{24bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2}}{%
       \whuthesis@choosefont{22bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2-}}{%
       \whuthesis@choosefont{18bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3}}{%
       \whuthesis@choosefont{16bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3-}}{%
       \whuthesis@choosefont{15bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4}}{%
       \whuthesis@choosefont{14bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4-}}{%
       \whuthesis@choosefont{12bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5}}{%
       \whuthesis@choosefont{10.5bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5-}}{%
       \whuthesis@choosefont{9bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6}}{%
       \whuthesis@choosefont{7.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6-}}{%
       \whuthesis@choosefont{6.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{7}}{%
       \whuthesis@choosefont{5.5bp}{.1pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{8}}{%
       \whuthesis@choosefont{5bp}{.1pt}{.1pt}}{}}
%
%%----- Redefine \tiny \scriptsize \footnotesize\small ----------%%
%%-------------------------\normalsize --------------------------%%
%%---------------\large \Large \LARGE \huge \Huge ---------------%%
%% Refer to ctex
\def\tiny{\zihao{7}}
\def\scriptsize{\zihao{6-}}
\def\footnotesize{\zihao{6}}
\def\small{\zihao{5-}}
\def\normalsize{\zihao{5}}%
\def\large{\zihao{4-}}%
\def\Large{\zihao{3-}}%
\def\LARGE{\zihao{2-}}%
\def\huge{\zihao{2}}%
\def\Huge{\zihao{1}}%

\newcommand{\tableinfo}[4]{
\begin{tabular}[t]{ll}
\department & \Large\song\Colon #1\\
\major & \Large\song\Colon #2\\
\name & \Large\song\Colon #3\\
\supervisor & \Large\song\Colon #4\ \ \prof
\end{tabular}
}
\newcounter{fortitle}
\newcommand{\maketitlea}[7]{
\begin{titlepage}
\begin{flushright}
{\normalsize\hei\topinfo{#6}{#7}}
\end{flushright}
\begin{center}
\vskip 5.0\baselineskip%
\bigtitle\par
\vskip 3.5\baselineskip%
{\linespread{1.15}\huge\hei #1\par}
\vskip 5.0\baselineskip%
\tableinfo{#2}{#3}{#4}{#5}
\vskip 25mm
\timestamp
\end{center}
\end{titlepage}
}
\newcommand{\emptypage}{
\begin{titlepage}
\quad
\end{titlepage}
}
\newcommand{\tableinfoe}[4]{
\begin{tabular}[t]{ll}
\large College & \large: #1\\
\large Subject& \large: #2\\
\large Name & \large : #3\\
\large Directed by & \large: #4\ \ Professor
\end{tabular}
}

\newcommand{\maketitleb}[5]{
\begin{titlepage}
\centering
\linespread{1.0}\huge\textbf{BACHELOR'S DEGREE THESIS OF WUHAN UNIVERSITY}\par
\vskip 6.0\baselineskip%
\huge #1
\vskip 8.0\baselineskip%
\tableinfoe{#2}{#3}{#4}{#5}
\vskip 30mm
\huge June 2015
\end{titlepage}
\declaration
}

\newcommand{\declaration}{
\begin{titlepage}
\begin{center}
    \huge\song\textbf{\heada}
\end{center}
\par
\vskip 3.0\baselineskip%
\linespread{1.15}\zihao{4}\song\indent \declarbody\par
\vskip 5.0\baselineskip%
\centering
\setsign
\end{titlepage}
}

\newcommand{\cnabstract}[2]{
\begin{titlepage}
\begin{center}
\LARGE\hei \summary
\end{center}
\vskip 1.0\baselineskip%
\par
\linespread{1.15}\large\song #1 \par
\vskip 5.0\baselineskip%
{\large\hei\noindent\keyword}
\large\song #2\par
\end{titlepage}
}

\newcounter{apcounter}
\newcounter{subapcounter}
\setcounter{apcounter}{-1}
\setcounter{subapcounter}{1}

\newcommand{\apsection}[1]{
\addtocounter{apcounter}{1}
\setcounter{subapcounter}{1}
\section*{A.{\theapcounter}\quad #1}
\addcontentsline{toc}{section}{A.\theapcounter\quad#1}
}

\newcommand{\apsubsection}[1]{
\subsection*{A.{\theapcounter}.{\thesubapcounter}\quad #1}
\addcontentsline{toc}{subsection}{A.\theapcounter.\thesubapcounter\quad#1}
\addtocounter{subapcounter}{1}
}

\newcommand{\content}{
    \begin{titlepage}
    \zihao{4}
    \tableofcontents{}
    \end{titlepage}
    \linespread{1.15}\zihao{4-}
}

\newcommand{\enabstract}[2]{
\begin{titlepage}
\begin{center}
\LARGE\textbf{ABSTRACT}
\end{center}
\vskip 1.0\baselineskip%
\par
\linespread{1.15}\large #1 \par
\vskip 5.0\baselineskip%
{\large\noindent\textbf{Key words: }}
\large\song #2\par
\end{titlepage}
\content
}
\AtBeginDocument{%
   \begin{CJK*}{GBK}{song}%
   \input{whuthesis.cfg}
   \zihao{4-}\song
   \sloppy\CJKindent\CJKtilde
}
\AtEndDocument{\clearpage\end{CJK*}}

\endinput
