\ProvidesClass{thesisMNNIT}[2021/12/19 crated by Prateek Raj Gautam (prateekrajgautam@gmail.com)]
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\newif\ifCLASSOPTIONFinal\CLASSOPTIONFinaltrue
\newif\ifCLASSOPTIONSynopsis\CLASSOPTIONSynopsisfalse
\newif\ifCLASSOPTIONDraft\CLASSOPTIONDraftfalse
\newif\ifCLASSOPTIONMNNIT\CLASSOPTIONMNNITfalse
\newif\ifCLASSOPTIONCustom\CLASSOPTIONCustomfalse
\newif\ifCLASSOPTIONPlag\CLASSOPTIONPlagfalse
\newif\ifCLASSOPTIONTest\CLASSOPTIONTestfalse
\newif\ifCLASSOPTIONList\CLASSOPTIONListfalse
\newif\ifCLASSOPTIONLogo\CLASSOPTIONLogofalse
\newif\ifCLASSOPTIONTracing\CLASSOPTIONTracingtrue
\DeclareOption{NoTracing}{\CLASSOPTIONTracingfalse}
\DeclareOption{Logo}{\CLASSOPTIONLogotrue}
\DeclareOption{Draft}{\CLASSOPTIONDrafttrue\CLASSOPTIONFinalfalse}
\DeclareOption{Final}{\CLASSOPTIONDraftfalse\CLASSOPTIONFinaltrue\CLASSOPTIONLogotrue}
\DeclareOption{MNNIT}{\CLASSOPTIONMNNITtrue}
\DeclareOption{Custom}{\CLASSOPTIONCustomtrue}
\DeclareOption{Plag}{\CLASSOPTIONDraftfalse\CLASSOPTIONFinalfalse\CLASSOPTIONPlagtrue}
\DeclareOption{Test}{\CLASSOPTIONDraftfalse\CLASSOPTIONFinalfalse\CLASSOPTIONPlagfalse\CLASSOPTIONTesttrue}
\DeclareOption{Synopsis}{\CLASSOPTIONFinalfalse\CLASSOPTIONPlagfalse\CLASSOPTIONSynopsistrue\CLASSOPTIONLogotrue}
\DeclareOption{List}{\CLASSOPTIONDraftfalse\CLASSOPTIONFinalfalse\CLASSOPTIONListtrue}

\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
		\PassOptionsToClass{\CurrentOption}{book}}}
\ProcessOptions \relax
%\LoadClassWithOptions{IEEEtran}
\LoadClass[a4paper,12pt,singlespaced,twoside,openright]{book}
%\LoadClass[a4paper,12pt,doublespaced,twoside,openright]{book}
%\LoadClass[a4paper,12pt,doublespaced,twoside,openright]{book}







%% for captalization of first world
\RequirePackage{mfirstuc}
%\capitalisewords{text}% first word only

\RequirePackage{textcase}
%\MakeTextUppercase{text}

%% For sentence case
\RequirePackage{stringstrings} % \capitalize, \caselower
\newcommand{\sentencecase}[1]{\caselower[e]{#1}\capitalize{\thestring}}

\RequirePackage{amsmath,multicol,graphicx,float,imakeidx,tikz,eso-pic,mcode,verbatim,titling,xifthen,filecontents,amsmath,soul,array,hyphenat,etoolbox,lscape}
\RequirePackage{mathtools}


\RequirePackage{xcolor}
\RequirePackage{listings}
\lstset{
  language=bash,
  basicstyle=\ttfamily
}


\RequirePackage[lofdepth,lotdepth]{subfig}
\RequirePackage[linesnumberedhidden,lined,ruled]{algorithm2e}
\RequirePackage[dvipdfmx]{media9}
%%LINE NUMBER
\RequirePackage[switch,pagewise]{lineno}
\RequirePackage{sectsty}
\allsectionsfont{\singlespacing}
\RequirePackage{blindtext}
\RequirePackage[toc,page]{appendix}
\RequirePackage{filecontents}
\RequirePackage{placeins}
\RequirePackage{picins}
\RequirePackage{enumerate}
\RequirePackage{wrapfig}
\RequirePackage{lineno}


\RequirePackage{times}
\RequirePackage{lipsum}

%%PAGE MARGINS
%%%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
%\RequirePackage{vmargin}
%\setmarginsrb  { 3.5cm}  % left margin
%                        { 2.5cm}  % top margin
%                        { 2.5cm}  % right margin
%                        { 2.5cm}  % bottom margin
%                        {  20pt}  % head height
%                        {0.25in}  % head sep
%                        {   9pt}  % foot height
%                        { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}%%  add extra space after par change




\ifCLASSOPTIONDraft
\RequirePackage[margin=25mm,bindingoffset=2mm]{geometry}
\newgeometry{top=25mm, bottom=25mm, outer=25mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontpagegeometry}

%\newgeometry{top=1in, bottom=1in, inner=1in, outer=1in, headheight=0in, headsep=0in}
\newgeometry{top=25mm, bottom=25mm, outer=25mm, inner=35mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontgeometry}

%\newgeometry{top=1.5in, bottom=1.19in, inner=1.2in, outer=1in, headheight=0.3in, headsep=0.2in}
\newgeometry{top=25mm, bottom=25mm, outer=25mm, inner=35mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{maingeometry}
\fi


\ifCLASSOPTIONFinal
\RequirePackage[margin=20mm,bindingoffset=2mm]{geometry}
\newgeometry{top=25mm, bottom=25mm, outer=25mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontpagegeometry}

%\newgeometry{top=1in, bottom=1in, inner=1in, outer=1in, headheight=0in, headsep=0in}
\newgeometry{top=20mm, bottom=20mm, outer=20mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontgeometry}

%\newgeometry{top=1.5in, bottom=1.19in, inner=1.2in, outer=1in, headheight=0.3in, headsep=0.2in}
\newgeometry{top=20mm, bottom=20mm, outer=20mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{maingeometry}
\fi

\ifCLASSOPTIONPlag
\RequirePackage[margin=20mm,bindingoffset=2mm]{geometry}
\newgeometry{top=25mm, bottom=25mm, outer=25mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontpagegeometry}

%\newgeometry{top=1in, bottom=1in, inner=1in, outer=1in, headheight=0in, headsep=0in}
\newgeometry{top=20mm, bottom=20mm, outer=20mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontgeometry}

%\newgeometry{top=1.5in, bottom=1.19in, inner=1.2in, outer=1in, headheight=0.3in, headsep=0.2in}
\newgeometry{top=20mm, bottom=20mm, outer=20mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{maingeometry}
\fi


\ifCLASSOPTIONSynopsis
\RequirePackage[margin=20mm,bindingoffset=2mm]{geometry}
\newgeometry{top=25mm, bottom=25mm, outer=25mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontpagegeometry}

%\newgeometry{top=1in, bottom=1in, inner=1in, outer=1in, headheight=0in, headsep=0in}
\newgeometry{top=20mm, bottom=20mm, outer=20mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontgeometry}

%\newgeometry{top=1.5in, bottom=1.19in, inner=1.2in, outer=1in, headheight=0.3in, headsep=0.2in}
\newgeometry{top=20mm, bottom=20mm, outer=20mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{maingeometry}

\newgeometry{top=1.7in, bottom=1.5in, outer=1.5in, inner=1.5in, headheight=30pt, headsep=.35in,footskip=.3in}
\savegeometry{synopsisgeometry}
%	\RequirePackage[compact]{titlesec}
%	\titleformat{\chapter}[display]
%	{\normalfont\huge\bfseries\singlespacing}{\chaptertitlename\ \thechapter}{20pt}{\Large}
%	\titlespacing*{\chapter} {0pt}{20pt}{10pt}
\fi

\ifCLASSOPTIONList
\RequirePackage[margin=20mm,bindingoffset=2mm]{geometry}
%\newgeometry{top=1in, bottom=1in, inner=1in, outer=1in, headheight=0in, headsep=0in}
\newgeometry{top=20mm, bottom=20mm, outer=20mm, inner=25mm, headheight=20pt, headsep=.25in,footskip=.3in}
\savegeometry{frontgeometry}
\fi

%\RequirePackage[DIV=14,BCOR=4mm,headinclude=true,footinclude=false]{typearea}

\RequirePackage{pdflscape}
\RequirePackage{rotating}
\RequirePackage{emptypage}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.~#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}



\fancyhf{}
%\fancyhead[positions]{header}

\fancyhead[LE]{\footnotesize{\nouppercase{\leftmark}}}
\fancyhead[RO]{\footnotesize{\nouppercase{\rightmark}}}
\cfoot{\fancyplain{}{{\footnotesize{\thepage}}}}
%\fancyhead[RE, LO]{\thepage}
\renewcommand{\headrulewidth}{1pt}






\RequirePackage{ragged2e}
\RequirePackage{minitoc}
\setcounter{minitocdepth}{2}%default is 2
%\setcounter{minitocdepth}{1}
\setlength{\mtcindent}{24pt}% default
\renewcommand{\mtcfont}{\small\rm}% default
\renewcommand{\mtcSfont}{\small\bf}% default

%%Bibliography packages
\RequirePackage{IEEEtrantools}


\RequirePackage[
	backend=biber,
	style=ieee,
	sorting=none,
	url=false,
	doi=false,
	isbn=false,
	eprint=false,
	dashed=false,
	maxbibnames=5,
	maxcitenames=1,
	mincitenames=1,
	autolang=hyphen
]{biblatex}

\defbibfilter{publications}{%
type=book or type=inproceedings or type=article or type=misc
and not keyword={myPublications}
}


\DeclareBibliographyCategory{hidePublications}
%\addtocategory{hidePublications}{J1}
%\addtocategory{hidePublications}{J2}
%\addtocategory{hidePublications}{J3}
%\addtocategory{hidePublications}{J4}
%\addtocategory{hidePublications}{J5}
%\addtocategory{hidePublications}{C1}
%\addtocategory{hidePublications}{C2}
%\addtocategory{hidePublications}{C3}
\defbibfilter{hiddenPublications}{not category=hidePublications}

%\addtocategory{hide}{C1}
%\addtocategory{hide}{J5}
%\printbibliography[filter=publications]

\newcommand{\citet}[1]{\textcite{#1}}
\newcommand{\citep}[1]{\parencite{#1}}
\newcommand{\bibentry}[1]{\fullcite{#1}}
\newcommand{\myParStart}[1]{\par {\citet{#1} in \citeyear{#1}} presents {\citetitle*{#1}}.}
\newcommand{\myNoParStart}[1]{{\citet{#1} in \citeyear{#1}} presents {\citetitle*{#1}}.}

%\newcommand{\myParStart}[1]{\par {\citet{#1} in \citeyear{#1}} presents {{\usebibentry{#1}{title}}}.}
%\newcommand{\myNoParStart}[1]{{\citet{#1} in \citeyear{#1}} presents {{\usebibentry{#1}{title}}}.}


\addbibresource{./MyPublications.bib}
%\RequirePackage{bibentry}

%\@ifpackageloaded{biblatex}{}{\bibliographystyle{IEEEtranN}}
%\RequirePackage[numbers]{natbib}
%\RequirePackage{multibib}
%\RequirePackage{chapterbib}
%\long\def\referenceFileNameBib {\jobname _Ref.bib}
\long\def\referenceFileName {\jobname}

\RequirePackage{usebib}
%\bibinput{\referenceFileName}
\newbibfield{doi}
\newbibfield{if}
%\newbibfield{summary}
%\RequirePackage{multibbl}
%\newbibliography{mypub}
%\bibliographystyle{mypub}{IEEEtranN}
%\bibliography{mypub}{MyPublications}


%\makeatletter
%\newcommand{\Capitalize}[1]{%
%\@ifpackagewith{inputenc}{utf8x}{\PrerenderUnicode{#1}}{}%
%\edef\@tempa{\expandafter\@gobble\string#1}%
%\edef\@tempb{\expandafter\@car\@tempa\@nil}%
%\edef\@tempa{\expandafter\@cdr\@tempa\@nil}%
%\uppercase\expandafter{\expandafter\def\expandafter\@tempb\expandafter{\@tempb}}%
%\@namedef{\@tempb\@tempa}{\expandafter\MakeUppercase\expandafter{#1}}}
%\makeatother


\newcommand{\idx}[1]{#1\index{\capitalisewords{#1}}}

%if not biblatex
%\newcommand{\footcite}[1]{\footnote{\cite{#1} \begin{NoHyper}\bibentry{#1}\end{NoHyper}}}

%%\newcommand{\pubEntry}[1]{\bibentry{#1}\hfill\ \newline\textbf{DOI:} \href{{https://dx.doi.org/}{\usebibentry{#1}{doi}}}{\usebibentry{#1}{doi}}, \textbf{Impact Factor:} \usebibentry{#1}{if}}


%%ADD EMPTY PAGE
\RequirePackage{afterpage,emptypage}
\newcommand{\myEmptyPage}{
	%%\clearpage
	%%\newpage
	%%\thispagestyle{empty}
	%%\phantom{a}
	%%\vfill
	%%\begin{tikzpicture}
	%%\draw[fill=white,draw=white,opacity=0.5] (0,0) rectangle (15,15);
	%%\end{tikzpicture}
	%%\vfill
	%%\addtocounter{page}{-1}
	\clearpage{\thispagestyle{empty}\cleardoublepage}
	%    \null
	%    \thispagestyle{empty}
	%    \newpage
	%    \addtocounter{page}{-1}
	%	\cleardoublepage
}
%%biblatex knows various schemes for sorting, these are:
%%
%%    nty Sort by name, title, year.
%%    nyt Sort by name, year, title.
%%    nyvt Sort by name, year, volume, title.
%%    anyt Sort by alphabetic label, name, year, title.
%%    anyvt Sort by alphabetic label, name, year, volume, title.
%%    ynt Sort by year, name, title.
%%    ydnt Sort by year (descending), name, title.
%%    none Do not sort at all. All entries are processed in citation order.
%%    debug Sort by entry key. This is intended for debugging only.

%%\usepackage[
%%backend=biber,
%%style=ieee,
%%sorting=none
%%]{biblatex}
%%\addbibresource{\referenceFileName}


%\RequirePackage{footbib}

%\RequirePackage[backref,pagebackref,pdftex,colorlinks=true,pdfstartpage=1,pdfstartview=FitV,pdfpagelayout=OnePageRight, linkcolor=black, urlcolor=black, citecolor=black, filecolor=black,bookmarks,bookmarksopen=true,bookmarksdepth=3pdfdisplaydoctitle=true]{hyperref}


\RequirePackage[en-US]{datetime2}
\DTMlangsetup{showdayofmonth=false}

%\DTMsetdatestyle{theismonth}


\RequirePackage[latin1]{inputenc}
\usetikzlibrary{shapes,arrows}
%\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[doublespacing]{setspace}











\lstset{
	language=Matlab,                      % choose the language of the code
	%  basicstyle=10pt,                   % the size of the fonts that are used for the code
	numbers=left,                           % where to put the line-numbers
	numberstyle=\footnotesize,            % the size of the fonts that are used for the line-numbers
	stepnumber=1,                            % the step between two line-numbers. If it's 1 each line will be numbered
	numbersep=5pt,                        % how far the line-numbers are from the code
	%   backgroundcolor=\color{white},     % choose the background color. You must add ,color}
	showspaces=false,                     % show spaces adding particular underscores
	showstringspaces=false,               % underline spaces within strings
	showtabs=false,                          % show tabs within strings adding particular underscores
	% frame=single,                            % adds a frame around the code
	%   tabsize=2,                            % sets default tabsize to 2 spaces
	%   captionpos=b,                            % sets the caption-position to bottom
	breaklines=true,                         % sets automatic line breaking
	breakatwhitespace=false,              % sets if automatic breaks should only happen at whitespace
	escapeinside={\%*}{*)}               % if you want to add a comment within your code
}


%% FOR GLOSSARIES
\RequirePackage{verbatim,verbatimbox}
\RequirePackage[toc]{glossaries}
%\RequirePackage[acronym,nonumberlist]{glossaries-extra}
%\setglossarystyle{long}
%\setabbreviationstyle[acronym]{long-short}
%\glssetcategoryattribute{acronym}{glossdesc}{firstuc}








\newglossary{sym}{2i}{2o}{Glossary 2}

\renewcommand{\glsnamefont}[1]{\textbf{#1}}
%definition


\newcommand{\abb}[2]{\newglossaryentry{#2}{name={#2}, description={\sentencecase{#1}}}#1 (#2)\glsadd{#2}}
\newcommand{\sym}[3]{ \newglossaryentry{#3}{type=sym, name={\ensuremath{#2}},  description={#1}}#1 (\ensuremath{#2})\glsadd{#3}}

%optional DEF
\newcommand{\abbDef}[2]{\newglossaryentry{#1}{name={#1}, description={#2}}#2 (#1)\glsadd{#1}}


\newcommand{\abbH}[2]{\newglossaryentry{#2}{name={#2}, description={\sentencecase{#1}}}\glsadd{#2}}

\newcommand{\symH}[3]{ \newglossaryentry{#3}{type=sym, name={\ensuremath{#2}},  description={#1}} \glsadd{#3}}


\RequirePackage{bookmark}
\newtheorem{example}{Example}



\newcommand\logo{\put(156,220){{%
				\begin{tikzpicture}\node[opacity=0.05]{%
						\includegraphics[width=4in]{./logo.png}};%
				\end{tikzpicture}%
			}}}

\newcommand\logoBW{\put(156,220){{%
				\begin{tikzpicture}\node[opacity=1]{%
						\includegraphics[width=4in]{./logoBW.png}};%
				\end{tikzpicture}%
			}}}


\AddToShipoutPicture{\logoBW}%
%%

%% Blank for hard cover
\newcommand\blank{\put(156,220){{%
				\begin{tikzpicture}
					\draw[color=white,fill] (0,0) rectangle (.8\textheight,.8\textwidth);
				\end{tikzpicture}
			}}}
















\newcommand{\printHelp}{


	\chapter{How To Use thesisMNNIT class}
	\section{REMOVE After Finalizing}
	\emph{to remove this chapter remove comment \textbackslash printHelp from the template file}


	\section{how to compile}
	It uses biber (insted of bibtex) for bibliography compilation.\\
	It is a six step process and the sequence is 
	\begin{enumerate}
\item pdflatex 
\item biber 
\item makeindex 
\item makeglossaries 
\item pdflatex 
\item pdflatex 
\end{enumerate}

	
	\subsection{customize texworks}
	go to texworks \>\> edit \>\> preferences \>\> typesetting \>\> processing tools
	\subsubsection{add makeglossaries to compiler}
	go to texworks \>\> edit \>\> preferences \>\> typesetting \>\> processing tools\\
	click + to add new name makeglossaries
	browse to texlive bin directory where makeglossaries is located
	in the parameters add \$basename
	and save
	
	create custom after analyzing other scripts
	
	Use this script to compile on linux or bash shell. similar sequence of commands can be used on windows.

\begin{enumerate}
\item pdflatex \$1 \$2 \$3
\item biber \$2
\item makeindex -s \$2
\item makeglossaries \$2
\item pdflatex \$1 \$2 \$3
\item pdflatex \$1 \$2 \$3
\end{enumerate}

here \$1 \$2 \$3 requires in arguments \$filename, \$basename and \$synctexoptions

%\lstinputlisting{compile.sh}
	\section{\textbackslash documentclass [ Final or Draft ]\{ thesisMNNIT \} }

	You can use Draft option to compile chapter and bib only, Final option will compile all front matter and backmatter

\section{to print author }
\textbackslash printAuthorWithSign\\
\textbackslash printAuthorSign\\
\textbackslash theauthor\\

	\section{Figure and figure ref}
	\fig{logo}{mnnitlogo}{fig:1}{.1}
	\section{Cite and footcite}
	The \figref{fig:1}    default \cite{J1,J2} \footcite{J2}  margins produced by \small{small TEXT}  \normalsize{normalize TEXT}
	\section{make Index list as}
	\textbackslash index\{Prateek\} \index{Prateek}
	\textbackslash index\{Raj\} \index{Raj}
	\textbackslash index\{Refresh\}\index{Refresh}
	\section{Define glossary and abbreviations}
	Define abbreviations as below and list will be generated
	Define definition

	\textbackslash abbDef$\{$WSN$\}$$\{$Wireless Sensor Network$\}$\\
			Define short form\\
			\textbackslash abb$\{$Definition$\}$$\{$Short form, ABB, ot term$\}$\\
		Define short form for glosary but do not print\\
		\textbackslash abbNoPrint$\{$$P_t$$\}$$\{$Power transmit$\}$\\
			\textbackslash abbDef$\{$rssi$\}$$\{$received signal strength indicator$\}$\\
		\textbackslash abb$\{$Wireless Sensor Network$\}$$\{$WSN$\}$\\
			\textbackslash abb$\{$ABB$\}$$\{$abbreviation$\}$\\
		\textbackslash abb$\{$$P_t$$\}$$\{$Power transmit$\}$\\
		results as
		\abbDef{rssi}{received signal strength indicator}\\
		\abb{Wireless Sensor Network}{WSN}\\
		\abb{ABB}{abbreviation}\\

		\subsubsection{Separate list of symbols with \textbackslash sym}
		\textbackslash sym$\{$Power transmit$\}\{$P$\_$t$\}\{$pt$\}$
		\sym{Power transmit}{P_t}{pt}\\

		\r To print use above defined terms use code as glossary package\\
		\textbackslash gls$\{$WSN$\}$\\
		\textbackslash glspl$\{$ABB$\}$\\
	results appear as \gls{WSN} \glspl{rssi}

}





\newcommand{\ec}{Electronics and Communication}
\newcommand{\ece}{Electronics and Communication Engineering}
\newcommand{\eced}{Electronics and Communication Engineering Department}
\newcommand{\dept}{Department of Electronics and Communication Engineering}
\newcommand{\institute}{Motilal Nehru National Institute of Technology Allahabad, Prayagraj, India 211004}
\newcommand{\inst}{Motilal Nehru National Institute of Technology Allahabad, Prayagraj, India 211004}
\newcommand{\phd}{Doctor of Philosophy}
\newcommand{\registration}[1]{#1}















\let\@title\@empty



\let\@authordepartment\@empty
\def\authordepartment#1{\g@addto@macro\@authordepartment{#1}}
\let\@authorPHDin\@empty
\def\authorPHDin#1{\g@addto@macro\@authorPHDin{#1}}
\let\@authorinstitute\@empty
\def\authorinstitute#1{\g@addto@macro\@authorinstitute{#1}}
\let\@authorRegistration\@empty
\def\authorRegistration#1{\g@addto@macro\@authorRegistration{#1}}
\let\@AAA\@empty
\def\AAA#1{\g@addto@macro\@AAA{#1}}
\let\@AAA\@empty
\def\AAA#1{\g@addto@macro\@AAA{#1}}
\let\@AAA\@empty
\def\AAA#1{\g@addto@macro\@AAA{#1}}
\let\@AAA\@empty
\def\AAA#1{\g@addto@macro\@AAA{#1}}
\let\@AAA\@empty
\def\AAA#1{\g@addto@macro\@AAA{#1}}

\let\@degree\@empty
\def\degree#1{\g@addto@macro\@degree{#1}}

\let\@supervisor\@empty
\def\supervisor#1{\g@addto@macro\@supervisor{#1}}

\let\@supervisorDesignation\@empty
\def\supervisorDesignation#1{\g@addto@macro\@supervisorDesignation{#1}}

\let\@supervisordepartment\@empty
\def\supervisordepartment#1{\g@addto@macro\@supervisordepartment{#1}}

\let\@supervisorinstitute\@empty
\def\supervisorinstitute#1{\g@addto@macro\@supervisorinstitute{#1}}

\let\@external\@empty
\def\external#1{\g@addto@macro\@external{#1}}

\let\@shortdate\@empty
\def\shortdate#1{\g@addto@macro\@shortdate{#1}}













%%THESIS PAGES%%


%FRONT PAGE
\newcommand{\frontpage}{{
			\AddToShipoutPicture*{\blank}
			\loadgeometry{frontpagegeometry}
			%\KOMAoptions{BCOR=0mm,DIV=12}
			\newpage\thispagestyle{empty}
			\setcounter{page}{1}
			\phantomsection
			%\addcontentsline{toc}{chapter}{Frontpage}
			%\phantomsection
			%\chapter*{Frontpage}
			\begin{center}

				\vspace{6em}
				\linespread{1.5}
				{\Large{\bf {\@title\par}}}
				\linespread{1}
				\vspace{6em}
				\emph{
					A Thesis Submitted in Partial Fulfillment of the\\ Requirements for the Degree of\\
					\vspace{4em}
					\textbf{\@degree}\\
					in\\
					\textbf{\@authorPHDin}\\}
				\vspace{4em}
				\large{by\\\vspace{1em}}
				\large{\textbf{\@author}}\\
				{(Reg. No.:\ \@authorRegistration)}\\
				\vspace{4em}
				\includegraphics[width=.3\textwidth]{./logo.png}
				\\
				\vspace{4em}
				{\normalsize{
						\MakeUppercase{\@authordepartment}
					}}\\
				\normalsize{
					\MakeUppercase{\@authorinstitute}\\
				}
				\textbf{
					\@date
				}
			\end{center}
			%\clearpage
			\myEmptyPage
			\restoregeometry
		}}


%%SYNOPSISPAGE
\newcommand{\synopsispage}{{
			\AddToShipoutPicture*{\blank}
			\loadgeometry{frontpagegeometry}
			%\KOMAoptions{BCOR=0mm,DIV=12}
			\newpage\thispagestyle{empty}
			\setcounter{page}{1}
			\phantomsection
			%\addcontentsline{toc}{chapter}{Frontpage}
			%\phantomsection
			%\chapter*{Frontpage}
			\begin{center}

				\vspace{6em}
				\linespread{1.5}
				\large{\textbf{\textit{Synopsis of}\\}}
				{\Large{\bf {\@title\par}}}
				\linespread{1}
				\vspace{4em}
				\emph{
					A Thesis Submitted in Partial Fulfillment of the\\ Requirements for the Degree of\\
					\vspace{2em}
					\textbf{\@degree}\\
					in\\
					\textbf{\@authorPHDin}\\}
				\vspace{2em}
				\large{by\\\vspace{1em}}
				\large{\textbf{\@author}}\\
				{(Reg. No.:\ \@authorRegistration)}\\
				\vspace{4em}
				\includegraphics[width=.3\textwidth]{./logo.png}
				\\
				\vspace{4em}
				{\normalsize{
						\MakeUppercase{\@authordepartment}
					}}\\
				\normalsize{
					\MakeUppercase{\@authorinstitute}\\
				}
				\textbf{
					\@date
				}
			\end{center}
			%\clearpage
			\myEmptyPage
			\restoregeometry
		}}

%ABSTRACT
\let\@abstract\@empty
\long\def\abstract#1{\g@addto@macro\@abstract{#1}}





%Hardbound Side Page

\newcommand{\sidePage}{
	\newpage\thispagestyle{empty}
	\AddToShipoutPicture*{\blank}
	\newgeometry{top=0mm, bottom=0mm, outer=0mm, inner=0mm, headheight=0pt, headsep=0in,footskip=0in}
	\begin{tikzpicture}
		\textbf{
			\draw[thin,opacity=.1] (0em,2em) rectangle (3em,\textheight);
			%\draw[fill] (0,2em) rectangle ++(3em,.2ex);
			\draw[] (3.4em,1em) node[below right,rotate=180] {\parbox{3em}{\centering Ph.D. Thesis}};
			%\draw[] (3.4em,3em) node[below right,rotate=180] {Thesis};
			\draw[fill] (0,5em) rectangle ++(3em,.2ex);
			\draw[] (.5em,7em) node[below right ,rotate=90] {\parbox{18cm}{\vfill \textbf{\@title}\vfill}};
			\draw[fill] (0,{8em+19cm}) rectangle ++(3em,.2ex);
			\draw[] (1em,{9em+19cm}) node[below right ,rotate=90] {\parbox{6cm}{\textbf{\@author}}};
			\draw[fill] (0,{8em+24.5cm}) rectangle ++(3em,.2ex);
			\draw[] (3.4em,{8em+25cm}) node[below right,rotate=180] {\parbox{3em}{\centering \@shortdate}};
			%\draw[fill] (0,{6em+20cm) rectangle (3em,1ex);
			\draw[] (-20em,20em) node[below right,rotate=90] {\parbox{25em}{\centering \Large{tracking for side  text of hard bound cover to be print with front cover page }}};
		}
	\end{tikzpicture}
}




















%ABSTRACT2

\newcommand{\abstractPage}{
	{
			\newpage\thispagestyle{empty}
			%\phantomsection
			%\addcontentsline{toc}{chapter}{Abstract}
			%\begin{center}
			%{\huge{\bf {Abstract}}}
			%\vspace{4em}
			%\end{center}
			\phantomsection
			%\addcontentsline{toc}{chapter}{Abstract}
			\chapter*{Abstract}
			\mtcaddchapter[Abstract]
			\@abstract
		}\myEmptyPage
}


%UNDERTACKING
\newcommand{\undertackingpage}{{
\newpage
%%\phantomsection
%%\addcontentsline{toc}{chapter}{Undertaking}
%%\begin{center}
%%{\huge{\bf {Undertaking}}}
%%\vspace{4em}
%%\end{center}
\phantomsection
\chapter*{\parbox{\linewidth}{\centering Undertaking}}
%\mtcaddchapter[Undertaking]
\thispagestyle{empty}
\par I declare that the work presented in this thesis titled ``\textbf{\emph{\@title}}'', submitted to the \@authordepartment, \textbf{\@authorinstitute}, for the award of the \textbf{\@degree} degree
in \textbf{\@authordepartment}, is my original work.
I neither have plagiarized any part of the thesis nor submitted the same work for the award of any other degree anywhere. In case this undertaking is found incorrect, the degree shall be withdrawn unconditionally. \newline\
\vspace{4em}
\onehalfspacing
%\newline\noindent\rule[.6ex]{6cm}{.1ex}\\
\newline\noindent\printAuthorWithSign\\
%\noindent\textbf{\@author}\\
\indent(\@authorRegistration)\\
%\@date\\
{\indent\small{\uppercase{Prayagraj}}}
\doublespacing
\myEmptyPage
}}


%CERTIFICATE
%%certificate FONTS
\newcommand*{\myfont}{\fontfamily{pzc}\selectfont}
\DeclareTextFontCommand{\textmyfont}{\myfont}

\def\regno{(registration number: \@authorRegistration)}
%\newcommand{\defaultcertificate}{This is to certify that the seminar entitled ``{{\textbf{\@title}}}''  being  submitted  by  {\bfseries {\@author}}  {{\regno}} in  the  \ec, \institute\ in fulfillment of the requirement for the award of the \phd,  is  a  record  of  bonafide  work  carried  out  by him, under my supervision. This work has not been submitted in parts or in full to any other university or institute for the award of any degree or diploma or for any other purpose.}


%\newcommand{\card}[1]{
%\ifthenelse{\equal{#1}{}}{Empty.}{#1}
%}



\newcommand{\defaultcertificate}[1]{
\ifthenelse{\equal{#1}{}}{
This is to certify that the thesis entitled ``{{\textbf{\@title}}}''  being  submitted  by  {\bfseries {\@author}}  {{\regno}} in  the  \eced, \institute , in fulfillment of the requirement for the award of the \@degree,  is  a  record  of  bonafide  work  carried  out  by him, under my supervision. This work has not been submitted in parts or in full to any other university or institute for the award of any degree or diploma or for any other purpose.\newline\vspace{3em}}{#1}
}

\let\@certificate\@empty
\long\def\certificate#1{\g@addto@macro\@certificate{#1}}


\newcommand{\certificatepage}{

	{\newpage
			\phantomsection
			\chapter*{\parbox{\linewidth}{\centering Certificate}}
			%\mtcaddchapter[Certificate]
			\thispagestyle{empty}
			%%\phantomsection
			%%\addcontentsline{toc}{chapter}{Certificate}
			%%\begin{center}
			%%%\textmyfont
			%%{\Huge {\textbf {Certificate}}}
			%%%\\\rule{\textwidth}{1ex}
			%%\vspace{2em}
			%%\end{center}

			{
				%\large
				%\emph
				{\indent

						\defaultcertificate{\@certificate}

					}
				\noindent
				\begin{minipage}[b]{1\textwidth}
					\raggedright
					\rule[.6ex]{6cm}{.1ex}\\
					\onehalfspacing
					{\textbf \@supervisor}\\
					\onehalfspacing
					\onehalfspacing
					{\normalsize{
							(\@supervisorDesignation)\\
							\@supervisordepartment\\
							\@supervisorinstitute\vfill}}
					\doublespacing
				\end{minipage}
			}
		}
	\myEmptyPage
}

%%ACKNOWLEDGEMENT
\let\@acknowledgement\@empty
\long\def\acknowledgement#1{\g@addto@macro\@acknowledgement{#1}}
\newcommand{\acknowledgementpage}{{\newpage
			\thispagestyle{empty}
			\phantomsection
			\chapter*{Acknowledgment}
			\mtcaddchapter[Acknowledgment]
			{
				{\indent\@acknowledgement\
					\vspace{4em}\newline}
				\begin{minipage}[b]{.5\textwidth}
					\raggedright
%					\rule[.6ex]{6cm}{.1ex}
					\printAuthorWithSign
%					\printAuthorSign
%					\newline
%					{\bf \@author}
				\end{minipage}
				\begin{minipage}[b]{.5\textwidth}
				\end{minipage}
			}
			\myEmptyPage
		}
}





%% GLOSSARY PAGE
\newcommand{\listOfAbbriviationsPage}{{\newpage
			\thispagestyle{empty}
			\phantomsection
			\printglossary[title={List of abbreviations},type=\acronymtype,style=long,nonumberlist]
		\addcontentsline{lof}{xchapter}{}\addcontentsline{lot}{xchapter}{}
			\mtcaddchapter
%			\adjustmtc
			\cleardoublepage}
}

\newcommand{\listOfSymbolsPage}{{\newpage
			\thispagestyle{empty}
			\phantomsection
			\printglossary[title={List of symbols},type=sym,style=long,nonumberlist]
			\addcontentsline{lof}{xchapter}{}\addcontentsline{lot}{xchapter}{}
			\mtcaddchapter
%			\adjustmtc
			\cleardoublepage}
}




%%AUTHORSign
\newcommand{\printAuthorSign}{}
\let\@authorSignature\@empty
\def\authorSignature#1{\g@addto@macro\@authorSignature{#1}}
\def\printAuthorSignaturepath{\includegraphics[width=4.5cm]{\@authorSignature}}
\renewcommand\printAuthorSign{
\printAuthorSignaturepath;
}

\newcommand{\printAuthorWithSign}{
\begin{tikzpicture}
\draw (0.1,1) node[right] {\includegraphics[width=3.5cm]{./authorSign}};
\draw (0,0) node[right] {\textbf{Prateek Raj Gautam}};
%\draw (0,.8) node[right,color=blue] {\printAuthorSignaturepath};
%\draw (0,0) node[right] {\textbf{\@author}};
\end{tikzpicture}
}


%%AuthorPictureForBiography
\newcommand{\printAuthorDp}{}
\let\@authorPicture\@empty
\def\authorPicture#1{\g@addto@macro\@authorPicture{#1}}
\def\printauthorPicturepath{\includegraphics[width=2.8cm]{\@authorPicture}}
\renewcommand\printAuthorDp{\parpic(3.3cm,4cm){\printauthorPicturepath}
}

%%AUTHORBIOGRAPHY
\let\@authorbiography\@empty
\long\def\authorbiography#1{\g@addto@macro\@authorbiography{#1}}
\newcommand{\authorBiographyPage}{{\newpage
			\thispagestyle{empty}
			\phantomsection
			%%\addcontentsline{toc}{chapter}{Author biography}
			%%\begin{center}
			%%{\huge{\bf {Author Biography}}}
			%%\vspace{2em}
			%%\end{center}
			\chapter*{Author biography}
			\mtcaddchapter[Author biography]
			\printAuthorDp
			\@authorbiography
			%\thispagestyle{empty}
			\cleardoublepage
		}}




%%LISTOFPUBLICATIONS
\let\@listOfPublications\@empty
\long\def\listOfPublications#1{\g@addto@macro\@listOfPublications{#1}}
\newcommand{\listOfPublicationsPage}{{
			\chapter*{List of publications}
			\mtcaddchapter[List of publications]
			{\@listOfPublications}
			\cleardoublepage}
}


%%Print Tracing Pages
\newcommand{\printTracingPages}{
	\cleardoublepage
	\doublespacing
	\newpage
	\pagestyle{empty}
	\AddToShipoutPicture{\blank}
	Tracing pages for hardbound cover. Print only if required.
	\cleardoublepage
	\sidePage
	\cleardoublepage
	\frontpage
}








%% AT END OF CLASS %%
\AtEndOfClass{

	\RequirePackage{makeidx}
	\makeindex
	\usepackage[totoc]{idxlayout}
	\makeglossaries



	%%%%%%
	%%%%%%TITLE STYLE USING titlesec
	\RequirePackage[compact]{titlesec}
	%%STANDARD STYLE
	\titleformat{\chapter}[display]
	{\normalfont\huge\bfseries\singlespacing}{\chaptertitlename\ \thechapter}{20pt}{\Huge}

	\titleformat{\section}
	{\normalfont\Large\bfseries\singlespacing}{\thesection}{1em}{}

	\titleformat{\subsection}
	{\normalfont\large\bfseries\singlespacing}{\thesubsection}{1em}{}

	\titleformat{\subsubsection}
	{\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}

	\titleformat{\paragraph}[runin]
	{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}

	\titleformat{\subparagraph}[runin]
	{\normalfont\normalsize\bfseries}{\thesubparagraph}{1em}{}

	\titlespacing*{\chapter} {0pt}{50pt}{40pt}
	\titlespacing*{\section} {0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
	\titlespacing*{\subsection} {0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
	\titlespacing*{\paragraph} {0pt}{3.25ex plus 1ex minus .2ex}{1em}
	\titlespacing*{\subparagraph} {\parindent}{3.25ex plus 1ex minus .2ex}{1em}



	%%MNNIT STYLE
	\ifCLASSOPTIONMNNIT
		%% CHAPTER TITLE Using Titlesec
		%\RequirePackage{titlesec}
		\titleformat{\chapter}[display]
		{\normalfont\large\bfseries\singlespacing}{\chaptertitlename\ \thechapter}{0pt}{\large}

		\titleformat{\section}
		{\normalfont\normalsize\bfseries\singlespacing}{\thesection}{1em}{}

		\titleformat{\subsection}
		{\normalfont\normalsize\itshape\bfseries\singlespacing}{\thesubsection}{1em}{}

		%\titleformat{\subsubsection}
		%{\normalfont\normalsize\itshape\singlespacing}{\thesubsubsection}{1em}{}

		\titleformat{\subsubsection}
		{\normalfont\normalsize\bfseries\onehalfspacing}{\thesubsubsection}{0em}{}

		\titleformat{\paragraph}[runin]
		{\normalfont\normalsize\bfseries\itshape}{\theparagraph}{0em}{}

		\titleformat{\subparagraph}[runin]
		{\normalfont\normalsize\bfseries\itshape}{\thesubparagraph}{0em}{}




		\titlespacing*{\chapter} {0pt}{00pt}{10pt}
		\titlespacing{\section}{0em}{2em}{1em}
		\titlespacing{\subsection}{0em}{1.5em}{.5em}
		\titlespacing{\subsubsection}{0em}{1em}{0em}



		%%OPTIONAL
		\renewcommand*{\thesubsubsection}{\roman{subsubsection}.}

	\fi


\ifCLASSOPTIONCustom
		%% CHAPTER TITLE Using Titlesec
		%\RequirePackage{titlesec}
		\titleformat{\chapter}[display]
		{\normalfont\huge\bfseries\singlespacing}{\chaptertitlename\ \thechapter}{0pt}{\LARGE}

%%%%%		\titleformat{\section}
%%%%%		{\normalfont\normalsize\bfseries\singlespacing}{\thesection}{1em}{}
%%%%%
%%%%%		\titleformat{\subsection}
%%%%%		{\normalfont\normalsize\itshape\bfseries\singlespacing}{\thesubsection}{1em}{}
%%%%%
%%%%%		%\titleformat{\subsubsection}
%%%%%		%{\normalfont\normalsize\itshape\singlespacing}{\thesubsubsection}{1em}{}
%%%%%
%%%%%		\titleformat{\subsubsection}
%%%%%		{\normalfont\normalsize\bfseries\onehalfspacing}{\thesubsubsection}{0em}{}
%%%%%
%%%%%		\titleformat{\paragraph}[runin]
%%%%%		{\normalfont\normalsize\bfseries\itshape}{\theparagraph}{0em}{}
%%%%%
%%%%%		\titleformat{\subparagraph}[runin]
%%%%%		{\normalfont\normalsize\bfseries\itshape}{\thesubparagraph}{0em}{}
%%%%%
%%%%%
%%%%%
%%%%%
%%%%%		\titlespacing*{\chapter} {0pt}{00pt}{10pt}
%%%%%		\titlespacing{\section}{0em}{2em}{1em}
%%%%%		\titlespacing{\subsection}{0em}{1.5em}{.5em}
%%%%%		\titlespacing{\subsubsection}{0em}{1em}{0em}
%%%%%
%%%%%
%%%%%
%%%%%		%%OPTIONAL
%%%%%		\renewcommand*{\thesubsubsection}{\roman{subsubsection}.}

	\fi














	%%LINKS AND HYPERREF
	\pdfminorversion=7

	\RequirePackage{hyperref}
	\hypersetup{
		hyperfootnotes=false,
		backref,
		pagebackref,
		pdftex,
		colorlinks=true,
		pdfstartpage=1,
		pdfstartview=FitV,
		pdfpagelayout={TwoColumnRight},
		linkcolor=black,
		urlcolor=black,
		citecolor=black,
		filecolor=black,
		bookmarksopen=true,
		bookmarksdepth=3,
		pdfdisplaydoctitle=true,
		pdfusetitle,
		pdfcreator={\@title},
		pdfkeywords={MNNIT, ECED, Prateek Raj Gautam,mGeek.in,prateekrajgautam@gmail.com},
		pdfauthor={\@author},
	}



	\newbibfield{doi}
	\newbibfield{if}
	\newbibfield{summery}
	%\nobibliography*%donot use with biblatex
}

%\ProcessOptionchapteronly



















%%%%%%%%%%%%%%%%
%% AT BEGIN DOCUMENT %%
\AtBeginDocument{
	\doublespacing
%
%
%
%
%
%
%
	\ifCLASSOPTIONTest
		%\frontmatter\frontpage\loadgeometry{frontgeometry}\pagestyle{plain}
		%\doublespacing
		%\undertackingpage\certificatepage\acknowledgementpage\abstractPage
		%\dominitoc\dominilof\dominilot
		%\singlespacing
		%\phantomsection
		%\tableofcontents\mtcaddchapter[Table of contents]\clearpage\phantomsection
		%\listoffigures\mtcaddchapter[List of figures]\clearpage
		%\listoftables\mtcaddchapter[List of tables]\clearpage
		%\listOfAbbriviationsPage\mtcaddchapter
		%\listOfSymbolsPage\mtcaddchapter
	\fi
%
%
%
	\ifCLASSOPTIONFinal
		\dominitoc\dominilof\dominilot
		\frontmatter\frontpage\loadgeometry{frontgeometry}\pagestyle{plain}
%		\ifCLASSOPTIONLogo
		\AddToShipoutPicture{\logoBW}
%		\fi
		\doublespacing
		\undertackingpage\certificatepage\acknowledgementpage\abstractPage
		\singlespacing \phantomsection
		\tableofcontents\mtcaddchapter[Table of contents]\clearpage\phantomsection
		\listoffigures\mtcaddchapter[List of figures]\clearpage
		\listoftables\mtcaddchapter[List of tables]\clearpage
		\listOfAbbriviationsPage
		\listOfSymbolsPage
		\phantomsection
		\doublespacing
		\clearpage
		\mainmatter
	\doublespacing
	\newgeometry{twoside}
	\loadgeometry{maingeometry}

	\pagestyle{fancy}
	\cleardoublepage
	\doublespacing
	\fi
%
	\ifCLASSOPTIONPlag
		\dominitoc\dominilof\dominilot
	\mainmatter
	\doublespacing
	\newgeometry{twoside}
	\loadgeometry{maingeometry}
%
	\pagestyle{fancy}
	\cleardoublepage
	\doublespacing
	\fi
%
%
%
	\ifCLASSOPTIONSynopsis

		\frontmatter\synopsispage\loadgeometry{frontgeometry}\pagestyle{plain}
		\AddToShipoutPicture{\logoBW}
		\doublespacing
		\loadgeometry{synopsisgeometry}
		\doublespacing
		\mainmatter
\thispagestyle{plain}
\fancyhf{}
\fancyhead[l]{}
\fancyfoot[c]{\thepage}
{	\begin{center}\Large{\textbf{\newline Synopsis}}\end{center}}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[l]{\scriptsize{\textit{Synopsis of \@title}}}
\fancyfoot[c]{\thepage}
%		\chapter*{\hfill Synopsis \hfill}
	\fi
%

\ifCLASSOPTIONList
%\frontmatter
		\ifCLASSOPTIONLogo
		\AddToShipoutPicture{\logoBW}
		\fi
\pagestyle{plain}
\singlespacing
{	\begin{center}\Large{\textbf{List of publications}}\end{center}\ }
\@listOfPublications

	\fi


%
%
%
%
%
	\ifCLASSOPTIONDraft
		\faketableofcontents
		\fakelistoffigures
		\fakelistoftables
		\singlespacing
		\doublespacing
		\clearpage
	\mainmatter
	\doublespacing
	\newgeometry{twoside}
	\loadgeometry{maingeometry}

	\pagestyle{fancy}
	\cleardoublepage
	\doublespacing
	\fi
%
%
%
%
%
%
%
	%\glsaddall
}
%\AtBeginDocument{}
















%%%%%%%%%%%%%%%
%% AT END DOCUMENT %%
\AtEndDocument{
	\
	\singlespacing
	\backmatter



	\ifCLASSOPTIONTest
		\listOfPublicationsPage\cleardoublepage
%		\nocite{*}
		\printbibliography\mtcaddchapter[Bibliography]\cleardoublepage
		\printindex
		\addcontentsline{lof}{xchapter}{}\addcontentsline{lot}{xchapter}{}
		\mtcaddchapter
		%% Author Biography
		\authorBiographyPage
		%%HardBound Binding Tracing pages
		\ifCLASSOPTIONTracing
			\printTracingPages
		\fi
	\fi

	\ifCLASSOPTIONFinal
		\listOfPublicationsPage\cleardoublepage
		%%OPTIONAL
		\singlespacing
		%%Bibliography
		\phantomsection
%		\printbibliography
%		\printbibliography%[keyword=cite]
		\printbibliography[filter=hiddenPublications]
		\mtcaddchapter[Bibliography]\cleardoublepage
		%% Index
		\printindex\addcontentsline{lof}{xchapter}{}\addcontentsline{lot}{xchapter}{}\mtcaddchapter\cleardoublepage
		%% Author Biography
		\authorBiographyPage
		%%HardBound Binding Tracing pages
		\ifCLASSOPTIONTracing
			\printTracingPages
		\fi
	\fi

	\ifCLASSOPTIONPlag
		\listOfPublicationsPage
%%		\cleardoublepage
%%		%%OPTIONAL
%%		\singlespacing
%%		%%Bibliography
%%		\phantomsection\printbibliography\mtcaddchapter[Bibliography]\cleardoublepage
%%		%% Index
%%		\printindex\addcontentsline{lof}{xchapter}{}\addcontentsline{lot}{xchapter}{}\mtcaddchapter\cleardoublepage
%%		%% Author Biography
%%%		\authorBiographyPage
%%		%%HardBound Binding Tracing pages
%%%		\printTracingPages
	\fi

	\ifCLASSOPTIONSynopsis
\newpage
%\fancyhead{}
{	\begin{center}\Large{\textbf{List of publications}}\end{center}\ }
\@listOfPublications
%		\listOfPublicationsPage
%		\cleardoublepage
%		%%OPTIONAL
%		\singlespacing
%		%%Bibliography
%		\phantomsection\printbibliography\mtcaddchapter[Bibliography]\cleardoublepage
%		%% Index
%		\printindex\addcontentsline{lof}{xchapter}{}\addcontentsline{lot}{xchapter}{}\mtcaddchapter\cleardoublepage
%		%% Author Biography
%		\authorBiographyPage
%		%%HardBound Binding Tracing pages
%		\printTracingPages
	\fi



	\ifCLASSOPTIONDraft
		%%Bibliography
		\phantomsection\printbibliography\mtcaddchapter[Bibliography]\cleardoublepage
		%% Index
		\printindex\addcontentsline{lof}{xchapter}{}\addcontentsline{lot}{xchapter}{}\mtcaddchapter\cleardoublepage
	\fi



}
