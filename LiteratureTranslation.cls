%this ECUST bachelor thsis,made by ray chen,all right reserve,now let's begin%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LiteratureTranslation}
\LoadClass[cs4size,a4paper,oneside]{ctexbook}

\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{chngcntr}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage[nooneline,center]{caption2}
\RequirePackage{multirow}

\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\thetable}{\thesection.\arabic{table}}
\renewcommand{\captionlabeldelim}{~}
\renewcommand{\captionfont}{\bf\zihao{-5}}
\renewcommand{\baselinestretch}{1.35}

\newcommand{\ECUSTabstract}{\noindent\heiti摘要\songti：}
\newcommand{\ECUSTkeywords}{\noindent\heiti关键词\songti：}
\newcommand{\ECUSTtable}[3]{
\begin{table}[hbtp]
\caption{#1}
\centerline{#2}
\label{#3}
\end{table}}

\captionsetup{labelsep=quad}
\geometry{left=2.5cm,right=2.5cm,top=2.8cm,bottom=2.5cm,headsep=0.5cm}

%the first page of each chapter apply the pagestyle fancy and set counter section to 0
\CTEXsetup[number={},name={,},beforeskip={-25bp},afterskip={18bp},
titleformat={\thispagestyle{fancy}\setcounter{section}{0}\normalfont\zihao{-2}\heiti}]{chapter}
%when begin a new section,set the counter figure and table to 0
\CTEXsetup[format={\setcounter{table}{0}\setcounter{figure}{0}\centering\zihao{-2}\heiti},beforeskip={12bp},afterskip={18bp}]{section}
\CTEXsetup[format={\zihao{4}\songti},beforeskip={18bp},afterskip={18bp}]{subsection}
\CTEXsetup[format={\zihao{-4}}\heiti,beforeskip={18bp},afterskip={18bp}]{subsubsection}

\counterwithout{section}{chapter}

\setlength{\parskip}{0pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=0pt,topsep=0pt}
\setmainfont{Times New Roman}

\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\lhead{基于Hadoop的生产管理系统}
\rhead{\thepage}


%Define ECUSTfigure,which insert a figure;it supports optional arguments
%and pass to \includegraphics
\def\ECUSTfigure{\futurelet\testchar\MaybeOptArgECUSTfigure}

\def\MaybeOptArgECUSTfigure{\ifx[\testchar\let\next\OptArgECUSTfigure
\else\let\next\NoOptArgECUSTfigure\fi\next}

\def\OptArgECUSTfigure[#1]#2#3#4{
\begin{figure}[hbtp]
\centerline{\includegraphics[#1]{#2}}
\caption{#3}
\label{#4}
\end{figure}}

\def\NoOptArgECUSTfigure#1#2#3{\begin{figure}[hbtp]
\centerline{\includegraphics{#1}}
\caption{\zihao{-5}#2}
\label{#3}
\end{figure}}


