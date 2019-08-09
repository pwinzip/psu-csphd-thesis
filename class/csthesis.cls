%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                            %%
%% Class ``csthesis''                                                         %%
%%                                                                            %%
%% A CS.PSU thesis LaTeX template for PhD.International Program               %%
%% Department of Computer Science, Prince of Songkla University               %%
%%                                                                            %%
%% Version: v1.0.1                                                            %%
%% Created by: Naphat Keawpibal                                               %%
%% Date: 2019/08/04                                                           %%
%% License: CS License (c) 2018                                               %%
%% Based on: https://github.com/sdayu/PSU-thesis-latex-template               %%
%% Git repo: https://github.com/pwinzip/psu-csphd-thesis                      %%
%% Acording to PSU thesis manual http://www.grad.psu.ac.th/thesis_manual.php  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% *************************** Class Identification *****************************
\newcommand\fileversion{1.0.1}
\newcommand\filedate{2019/08/04}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../class/csthesis}[\filedate\space A Computer Science thesis class file
by Naphat Keawpibal (v\fileversion)]
\typeout{PhD.International Program --- department of Computer Science, Prince of Songkla University}

% ##############################################################################
% ##								Pre-defined options	   				      ##
% ##############################################################################

% *********************** Define a Print/Online Version ************************
\newif\if@print\@printfalse
\DeclareOption{print}{\@printtrue}

% Font Size
\newcommand\CSTHESIS@ptsize{12pt}
\PassOptionsToClass{\CSTHESIS@ptsize}{book}%

% Page Size
\newcommand\CSTHESIS@papersize{a4paper} % Set Default as a4paper
\PassOptionsToClass{\CSTHESIS@papersize}{book}%

% Column layout
\PassOptionsToClass{oneside}{book}
\PassOptionsToClass{onecolumn}{book}

\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{book}
}

% Execute option
\ProcessOptions\relax
\LoadClass[\CSTHESIS@ptsize, \CSTHESIS@papersize, oneside, onecolumn]{book}



% ##############################################################################
% ##								Packages	   						      ##
% ##############################################################################

% ******************************** Page Layout *********************************
% margin left = 1.5in, right = 1in, top = 1.5in, bottom = 1in
\RequirePackage[left=1.5in,right=1in,top=1.5in,bottom=1in]{geometry}
\RequirePackage{lscape}  			% Supports Landscape Layout
\usepackage{pdflscape}				% Rotate PDF
\RequirePackage{rotating}  			% Supports Landscape Layout
\RequirePackage[final]{microtype}
\usepackage{amsmath,amsthm}
\usepackage{amssymb,amsfonts}
%\RequirePackage{times}				% Times New Roman font
\RequirePackage{newtxtext,newtxmath}			% Times New Roman font

% ******************************** Front matter ********************************
\RequirePackage{setspace}		% Define line spacing in paragraph
\RequirePackage{calc}    		% To calculate vertical spacing
\usepackage{etoolbox}			% If then, logical operation
\RequirePackage{graphicx}			% Image, figure
\usepackage{hyphenat}			% Hyphenation
\usepackage{array}		

% ******************************* Number Series ********************************
\usepackage{engord}
\engordraisetrue

% ******************************* Header, Footer *******************************
\RequirePackage{fancyhdr}

% ********************************* Formatting *********************************
\usepackage{enumitem}
\usepackage{titlesec}			% Format title, section
\usepackage{indentfirst}		% Every first line go to indent
\usepackage{ragged2e}			% ragged-left and -right for justification

% *********************** Table of contents and appendix ***********************
\RequirePackage[nottoc]{tocbibind}				% add Bibliography, List of figures and tables to contents
\RequirePackage[toc,title,titletoc,page]{appendix}
\usepackage{titletoc}
\RequirePackage{tocloft}

% ********************************* Algorithm **********************************
\usepackage[chapter]{algorithm}
\usepackage{algpseudocode}

% ********************************* Sub Figure *********************************
\usepackage{caption}
\usepackage[caption=false,subrefformat=parens,labelformat=parens]{subfig}

% ********************************** Sub File **********************************
\usepackage{subfiles}

% *********************************** Table ************************************
\usepackage{threeparttablex}	% add note under table
\usepackage{longtable}			% table in multiple page
\usepackage{multirow}			% multiple rows
\usepackage{booktabs}
\usepackage{makecell}
\usepackage{tabularx}
\usepackage[table]{xcolor}

% ************************************* URL ************************************
\RequirePackage{url}

% ****************************** Hyperreferencing ******************************
\RequirePackage{hyperref}			% Define hyperrefering

% **************************** AuthorYear Reference ****************************
\RequirePackage[numbers, sort&compress, square]{natbib}		% IEEE style

% ******************************* Other packages *******************************
\RequirePackage{atbegshi}	% At Begin, End document



% ##############################################################################
% ############################ Pre-defined Commands ############################
% ##############################################################################

% *************************** Renewcommand for cite ****************************
\renewcommand{\cite}[1]{\citep{#1}}

% ************************************ URL *************************************
\newcommand{\url@leostyle}{%
	\@ifundefined{selectfont}{\renewcommand{\UrlFont}{\sffamily}}
	{\renewcommand{\UrlFont}{\normalsize}}}
\urlstyle{leo}

% ****************************** Setting caption *******************************
\captionsetup[figure]{labelsep=quad, labelfont=bf}
\captionsetup[table]{labelsep=quad, labelfont=bf}

% ***************************** Define column type *****************************
\newcolumntype{P}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{E}[1]{>{\centering\arraybackslash}p{#1}}

% ********************* Font Size in cover and inner pages *********************
% Normal font size
\newcommand{\coverNormalFont}{\fontsize{14.03}{14} \selectfont}
% Submission font size for PhD plan 2
\newcommand{\coverSmallFont}{\fontsize{13.55}{14} \selectfont}

% ****************************** Hyperreferencing ******************************
\if@print
	\hypersetup{
		final=true,
		plainpages=false,
		pdfstartview=FitH,
		pdfview=FitH,
		pdftoolbar=true,
		pdfmenubar=true,
		bookmarksopen=false,
		bookmarksnumbered=true,
		breaklinks=true,
		linktoc=all,
		colorlinks=true,
		linkcolor=black,
		urlcolor=black,
		citecolor=black,
		anchorcolor=black
	}
\else
	\hypersetup{
		final=true,
		plainpages=false,
		pdfstartview=FitH,
		pdfview=FitH,
		pdftoolbar=true,
		pdfmenubar=true,
		bookmarksopen=false,
		bookmarksnumbered=true,
		breaklinks=true,
		linktoc=all,
		colorlinks=true,
		linkcolor=blue,
		urlcolor=blue,
		citecolor=blue,
		anchorcolor=green
	}
\fi




% ##############################################################################
% ####################### Table of Contents & Appendices #######################
% ##############################################################################

\setcounter{lofdepth}{1}
%\setcounter{tocdepth}{3}

\newcommand{\contenttopchapter}{\textbf{Chapter}}
\newcommand{\contenttoptable}{\textbf{Table}}
\newcommand{\contenttopfigure}{\textbf{Figure}}
\newcommand{\contenttopalgorithm}{\textbf{Algorithm}}
\newcommand{\contenttoppage}{\textbf{Page}}
\newcommand{\contenttopcontinued}{~(Continued)}

\renewcommand{\bibname}{BIBLIOGRAPHY}
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\listalgorithmname}{LIST OF ALGORITHMS}
\renewcommand{\appendixname}{APPENDIX}
\renewcommand{\appendixtocname}{APPENDICES}
\renewcommand{\appendixpagename}{APPENDICES}

% ************************** Header TOC, LOF, LOT, LOA *************************
\newcommand{\CSContentsHeader}[4]{
	\chapter*{#1#2} \noindent #3 \hfill #4\par\kern.5\baselineskip
}

\AtBeginDocument{%
	\setlength{\parskip}{1ex}		% The length parameter that characterises the paragraph spacing 
	\setlength{\baselineskip}{1.25em}	% vertical spacing within paragraph
	\setcounter{tocdepth}{2}
	\setstretch{1.5}
	
	\renewcommand{\tableofcontents}{%
		\newpage	
		\cleardoublepage
		\begingroup%
		\parindent\z@\parskip\cftparskip%
		\CSContentsHeader{\contentsname}{}{}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\contentsname}
		\@starttoc{toc}%
		\endgroup%
		\clearpage
	}
	
	\renewcommand{\listoftables}{
		\cleardoublepage
		\begingroup%
		\parindent\z@\parskip\cftparskip%
		\CSContentsHeader{\listtablename}{}{\contenttoptable}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\listtablename}
		\@starttoc{lot}%
		\endgroup%
		\clearpage
	}
	
	\renewcommand{\listoffigures}{
		\cleardoublepage
		\begingroup%
		\parindent\z@\parskip\cftparskip%
		\CSContentsHeader{\listfigurename}{}{\contenttopfigure}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\listfigurename}
		\@starttoc{lof}%
		\endgroup%
		\clearpage
	}
	
	
	\renewcommand{\listofalgorithms}{%
		\cleardoublepage
		\@cfttocstart \par
		\begingroup%
		\parindent\z@\parskip\cftparskip 
		\CSContentsHeader{\listalgorithmname}{}{\contenttopalgorithm}{\contenttoppage}
		\let\l@algorithm\l@figure
		\addcontentsline{toc}{chapter}{\listalgorithmname}
		\par \nobreak \vskip 1em%
		\@starttoc{loa}%
		\endgroup%
		\@cfttocfinish
		\clearpage
	}
	
}

\AtEndDocument{
	\newpage\null\thispagestyle{empty}\newpage
}


% ************************** Header Table of Contents **************************
\newcommand{\CSContentsHeaderContinued}{\CSContentsHeader{\contentsname}{\contenttopcontinued}{}{\contenttoppage}}

\newcommand{\CStableofcontents}{
	\AtBeginShipout{\CSContentsHeaderContinued}
	\tableofcontents
	\renewcommand{\CSContentsHeaderContinued}{}
}

% **************************** Header List of Tables ***************************
\newcommand{\CSLOTHeaderContinued}{\CSContentsHeader{\listtablename}{\contenttopcontinued}{\contenttoptable}{\contenttoppage}}

\newcommand{\CSlistoftables}{
	\AtBeginShipout{\CSLOTHeaderContinued}
	\listoftables
	\renewcommand{\CSLOTHeaderContinued}{}
}

% *************************** Header List of Figures ***************************
\newcommand{\CSLOFHeaderContinued}{\CSContentsHeader{\listfigurename}{\contenttopcontinued}{\contenttopfigure}{\contenttoppage}}

\newcommand{\CSlistoffigures}{
	\AtBeginShipout{\CSLOFHeaderContinued}
	\listoffigures
	\renewcommand{\CSLOFHeaderContinued}{}
}

% ************************* Header List of Algorithms **************************
\newcommand{\CSLOAHeaderContinued}{\CSContentsHeader{\listalgorithmname}{\contenttopcontinued}{\contenttopalgorithm}{\contenttoppage}}

\newcommand{\CSlistofalgorithms}{
	\AtBeginShipout{\CSLOAHeaderContinued}
	\listofalgorithms
	\renewcommand{\CSLOAHeaderContinued}{}
}


% ******************* Add 'CHAPTER' before list of chapters ********************
\newcommand{\tocheading}{\bfseries\par\bigskip\MakeUppercase{\chaptername}\hfill\par}

% ************************ Formatting in TOC, LOF, LOT *************************
\renewcommand{\cftchapindent}{0em}
\renewcommand{\cftsecindent}{2.5em}
\renewcommand{\cftsubsecindent}{5em}
\renewcommand{\cftfigindent}{0em}
\renewcommand{\cfttabindent}{0em}

\titlecontents{chapter}% <section-type>
[0pt]% <left>
{\hangindent1em\vspace{.75em}}% <above-code>
{\hspace{1em}\scshape\bfseries\hyperlink{chapter.\thecontentslabel}{\thecontentslabel\quad}}% <numbered-entry-format>
{\thecontentslabel}% <numberless-entry-format>
{\bfseries\hfill\contentspage}% <filler-page-format>

% ********************************* Appendices *********************************
\renewenvironment{appendices} {
	\@chap@pppage
	\appendix
	\setcounter{chapter}{0}
	\renewcommand{\thechapter}{\Alph{chapter}}
	\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
	
	% fix contents display wrong appendix
	\titlecontents{chapter}% <section-type>
	[0pt]% <left>
	{\vspace{0.5em}}% <above-code>
	{\hspace{1em}\bfseries\hyperlink{appendix.\thecontentslabel}{\appendixname\ \thecontentslabel\quad}}% <numbered-entry-format>
	{\bfseries\thecontentslabel}% <numberless-entry-format>
	{\normalfont\titlerule*[1.5ex]{.}\contentspage}% <filler-page-format>			
}




% ##############################################################################
% ############################ Pre-defined Settings ############################
% ##############################################################################

% ******************************* Chapter Format *******************************
% numberred chapter
\titleformat{\chapter}[display]
{\bfseries\large} % format
{\filcenter\MakeUppercase{\chaptertitlename}\ \thechapter} % label
{.75em} % sep
{
	\centering
	\scshape
} % before-code
[
\vspace{1em}%
] % after-code

% numberless chapter -- Heading for Acknowledgment, TOC, LOT, LOF, LOA
\titleformat{name=\chapter,numberless}[display]
{\bfseries\large} % format
{\filcenter\MakeUppercase}
{-1.95em}
{\vspace{1ex}\centering}
[\vspace{1em}]
\titlespacing*{\chapter}{0pt}{-2.8em}{0pt}

% section
\titleformat{\section} [block]
{\normalfont\bfseries}{\thesection}{1ex}{}
\titlespacing{\section}{0pt}{1em}{0em}
% subsection
\titleformat{\subsection} [block]
{\normalfont\bfseries}{\thesubsection}{1ex}{}
\titlespacing*{\subsection}{\parindent}{1em}{0em}
% subsubsection
\titleformat{\subsubsection} [block]
{\normalfont\bfseries}{}{1ex}{}
\titlespacing*{\subsubsection}{\parindent}{1em}{0em}

% Set every paragraph always indents 1in
\setlength{\parindent}{1in}
% Set depth for section at 2 levels
\setcounter{secnumdepth}{2}

% ******************************** Header Format *******************************
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\coverNormalFont\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\setlength{\headheight}{15pt}
\setlength{\topmargin}{-0.1in}
\setlength{\headsep}{0.4in}

\fancypagestyle{plain}{
	\fancyhead{}
	\fancyhf{}
	
	\fancyhead[R]{\coverNormalFont\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}




% ##############################################################################
% ####################### Function Computing Empty Space #######################
% ##############################################################################

% ******************** To compute empty space in title page ********************
% Boxes below are used to space different contents on the title page
% Based on https://github.com/cambridge/thesis

\newcommand{\computeTitlePageSpacing}{
	
	% University Crest Box
	\@ifundefined{CSTHESIS@crest}
	{
		\newsavebox{\CSTHESIS@crest}
	}{}
	
	\begin{lrbox}{\CSTHESIS@crest}
		\begin{minipage}[c]{\textwidth}
			\begin{doublespacing}
				\begin{center}
					{\@crest \par}
					\vspace*{3ex}
				\end{center}
			\end{doublespacing}
		\end{minipage}
	\end{lrbox}
	
	% Title Box
	\@ifundefined{CSTHESIS@Title}
	{
		\newsavebox{\CSTHESIS@Title}
	}{}
	
	\begin{lrbox}{\CSTHESIS@Title}
		\begin{minipage}[c]{\textwidth}
			\begin{doublespacing}
				\begin{center}
					{\bfseries{\coverNormalFont \@titleCover}\par}
				\end{center}
			\end{doublespacing}
		\end{minipage}
	\end{lrbox}
	
	% Author Box
	\@ifundefined{CSTHESIS@author}
	{
		\newsavebox{\CSTHESIS@author}
	}{}
	
	\begin{lrbox}{\CSTHESIS@author}
		\begin{minipage}[c]{\textwidth}
			\begin{doublespacing}
				\begin{center}
					{\bfseries{\coverNormalFont \@authorName~~\@authorLastname} \par}
				\end{center}
			\end{doublespacing}
		\end{minipage}
	\end{lrbox}
	
	% Submission Box
	\@ifundefined{CSTHESIS@submission}
	{
		\newsavebox{\CSTHESIS@submission}
	}{}
	
	\begin{lrbox}{\CSTHESIS@submission}
		\begin{minipage}[c]{\textwidth}
			\begin{doublespacing}
				\begin{center}
					% Submission Text
					{\bfseries{\submissiontext}}
					{\bfseries{\coverNormalFont Degree of {\@degree} in {\@majorProgramCover}}\par}
					{\bfseries{\coverNormalFont \@university}\par}
					{\bfseries{\coverNormalFont \@degreeyear}\par}
					{\bfseries{\coverNormalFont Copyright of \@university}\par}
				\end{center}
			\end{doublespacing}
		\end{minipage}
	\end{lrbox}
	
	%  Now to compute the free vertical space
	
	\@ifundefined{CSTHESIS@titlepagespacing}
	{
		\newlength{\CSTHESIS@titlepagespacing}
	}{}
	\message{The text height is \the\CSTHESIS@crest}
	\setlength{\CSTHESIS@titlepagespacing}{ \textheight %
		- \totalheightof{\usebox{\CSTHESIS@Title}}
		- \totalheightof{\usebox{\CSTHESIS@crest}}
		- \totalheightof{\usebox{\CSTHESIS@author}}
		- \totalheightof{\usebox{\CSTHESIS@submission}}
	}
}

% ******************** To compute sign box in approve page *********************

\newcommand{\computeSignBoxWidth}{
	\@ifundefined{CSTHESIS@advisorwidth}
	{
		\newlength{\CSTHESIS@advisorwidth}
	}{}
	\@ifundefined{CSTHESIS@majoradvisorwidth}
	{
		\newlength{\CSTHESIS@majoradvisorwidth}
	}{}
	\@ifundefined{CSTHESIS@coadvisorwidth}
	{
		\newlength{\CSTHESIS@coadvisorwidth}
	}{}
	\@ifundefined{CSTHESIS@cadidatewidth}
	{
		\newlength{\CSTHESIS@cadidatewidth}
	}{}
	\@ifundefined{CSTHESIS@declarationwidth}
	{
		\newlength{\CSTHESIS@declarationwidth}
	}{}
	
	\setlength{\CSTHESIS@majoradvisorwidth}{\widthof{(\@majoradvisor)}}
	\setlength{\CSTHESIS@coadvisorwidth}{\widthof{(\@coadvisor)}}
	
	\setlength{\CSTHESIS@cadidatewidth}{\widthof{(\@authorTitle~\@authorName~\@authorLastname)}}
	
	\expandafter\ifnumgreater\expandafter{\CSTHESIS@majoradvisorwidth}{\CSTHESIS@coadvisorwidth}
	{\setlength{\CSTHESIS@advisorwidth}{\CSTHESIS@majoradvisorwidth}}
	{\setlength{\CSTHESIS@advisorwidth}{\CSTHESIS@coadvisorwidth}}
	
	\expandafter\ifnumgreater\expandafter{\CSTHESIS@advisorwidth}{\CSTHESIS@cadidatewidth}
	{\setlength{\CSTHESIS@declarationwidth}{\CSTHESIS@advisorwidth}}
	{\setlength{\CSTHESIS@declarationwidth}{\CSTHESIS@cadidatewidth}}
}



% ##############################################################################
% ################################### Layout ###################################
% ##############################################################################

% ************************ Declare Title Environment ***************************
\renewenvironment{titlepage} % changed from "newenvironment"
{%
	\begingroup
	\newpage
	\thispagestyle{empty}
	\setcounter{page}{\z@} 
}%
{
	\endgroup
	\clearpage
	% create empty page
	\newpage
	\thispagestyle{empty}
	\setcounter{page}{\z@} 
	\mbox{}
	\clearpage
}

\newenvironment{innertitlepage} % create "newenvironment"
{%
	\begingroup
	\newpage
	\pagenumbering{\@innerPageStyle}
	\setcounter{page}\z@ 
	\addtocounter{page}{1}
}%
{
	\endgroup
	\clearpage
}

\newenvironment{othertitlepage} % create "newenvironment"
{%
	\begingroup
	\newpage
}%
{
	\endgroup
	\clearpage
}

% ********************************* Title Page *********************************
\renewcommand{\maketitle}{
	\makeCSthesistitle
}

\newcommand{\makeCSthesistitle}{
	% To compute the free vertical space in Title page
	\computeTitlePageSpacing
	
	\begin{doublespacing}
		\begin{center}
			\setlength{\parskip}{0pt}
			\setlength{\baselineskip}{1em}
			\renewcommand{\baselinestretch}{1.25}
			
			% Crest
			{\@crest \par}
			\vspace*{3ex}
			
			% fontsize{14.09}
			{\bfseries{\coverNormalFont \@titleCover}\par}
			\vspace{.5\CSTHESIS@titlepagespacing}
			
			{\bfseries{\coverNormalFont \@authorName~~\@authorLastname}\par}
			\vspace{.5\CSTHESIS@titlepagespacing}
			
			{\bfseries{\submissiontext}\par}
			{\bfseries{\coverNormalFont Degree of {\@degree} in {\@majorProgramCover}}\par}
			{\bfseries{\coverNormalFont \@university}\par}
			{\bfseries{\coverNormalFont \@degreeyear}\par}
			{\bfseries{\coverNormalFont Copyright of \@university}\par}
		\end{center}
	\end{doublespacing}
}


% ******************************* Approval Page ********************************

\newcommand{\makeApprovalPage}{
	
	\begin{onehalfspacing}
		\begin{flushleft}
			
			\begin{tabular*}{\textwidth}{@{}p{.2\textwidth} P{.78\textwidth}@{}}
				\textbf{Thesis Title} & \@title \\
				\textbf{Author}& \@authorTitle~\@authorName~\@authorLastname \\
				\textbf{Major Program}& \@majorProgram \\
			\end{tabular*}
			
			\vspace{1ex}
			\hrule height .7pt
			\vspace{1em}
			
			%% initial label %%
			\def\majorAdvisorLabel{
				\textbf{Major Advisor}
			}
			
			\def\coAdvisorLabel{
				\textbf{Co-advisor}
			}
			
			\def\examiningCommitteeLabel{
				\textbf{Examining Committee:}
			}
			
			\def\chairpersonLabel{
				Chairperson
			}
			
			\def\committeeLabel{
				Committee
			}
			
			\computeSignBoxWidth
			%% end initial label %%
			
			\setlength\tabcolsep{4pt}
			\begin{tabular*}{\textwidth}{@{}p{.49\textwidth}p{.49\textwidth}@{}}
				\majorAdvisorLabel & \examiningCommitteeLabel \\
				\vspace*{1em} & \\
				{\makebox[\CSTHESIS@advisorwidth]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}\chairpersonLabel} \\ 
				(\@majoradvisor) & (\@chairperson) \\  
				
				\vspace*{1em} & \\
				
				& {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}\committeeLabel}\\			
				{\expandafter\ifstrequal\expandafter{\@coadvisor}{}
					{}{\textbf{\coAdvisorLabel}}
				}
				& (\@committeeOne) \\ 
				\vspace*{1em} & \\
				{\expandafter\ifstrequal\expandafter{\@coadvisor}{}
					{}{\makebox[\CSTHESIS@advisorwidth]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}}
				}
				& {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}\committeeLabel} \\
				{\expandafter\ifstrequal\expandafter{\@coadvisor}{}
					{}{(\raggedleft{\@coadvisor)}}
				}
				& (\@committeeTwo) \\ 
				
				\vspace*{1em} & \\
				
				& {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}\committeeLabel} \\
				& (\@committeeThree) \\
				
				\vspace*{1em} & \\
				
				\expandafter\ifstrequal\expandafter{\@committeeFour}{}
				{
					& \\
					& \\
					\vspace*{1em} & \\}
				{
					& {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}\committeeLabel} \\
					& (\@committeeFour) \\
					\vspace*{1em} & \\
				}
			\end{tabular*}
		\end{flushleft}
		
		%\vspace{1em}
		\setlength{\parindent}{0.5in}
		\nohyphens{{The Graduate School, Prince of Songkla University, has approved this thesis as}
			\expandafter\ifstrequal\expandafter{\@studyplan}{PhD1}
			{\nohyphens{fulfillment of the requirements for the \@degree~Degree in \@majorProgram.}}
			{\nohyphens{partial fulfillment of the requirements for the \@degree~Degree in \@majorProgram.}}
		}
		
		\noindent
		\vspace{1em}
		\begin{flushright}
			\begin{tabular}{c}
				{\makebox[\widthof{(\@deanOfGraduateSchool)}]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}}\\
				(\@deanOfGraduateSchool)\\
				{Dean of Graduate School}
			\end{tabular}
		\end{flushright}
		
	\end{onehalfspacing}
}


% ****************************** Declaration Page ******************************
\newcommand{\makeDeclaration}{
	
	\begin{onehalfspacing}
		\setlength{\parindent}{0in}
		\nohyphens{This is to certify that the work here submitted is the result of the candidate's own investigations. Due acknowledgement has been made of any assistance received.}
		
		\vspace{3em}
		\computeSignBoxWidth
		\hspace*{.5\textwidth}
		
		\begin{flushright}
			\begin{tabular}{l}
				{\makebox[\CSTHESIS@declarationwidth]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt{Signature}}} \\
				(\@majoradvisor) \\
				{Major Advisor} \\
				\vspace{2em} \\
				\ifstrequal{\@coadvisor}{}
				{}
				{
					{\makebox[\CSTHESIS@declarationwidth]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt{Signature}}}\\
					(\@coadvisor) \\
					{Co-advisor} \\
				}
				\vspace{2em} \\
				{\makebox[\CSTHESIS@declarationwidth]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt{Signature}}} \\
				(\@authorTitle~\@authorName~\@authorLastname) \\
				{Candidate} \\
			\end{tabular}
		\end{flushright}
		
	\end{onehalfspacing}
	
	%% Create a copyright page
	\newpage
	\begin{onehalfspacing}
		\setlength{\parindent}{0in}
		\nohyphens{I hereby certify that this work has not been accepted in substance for any degree, and is not being currently submitted in candidature for any degree.}
		
		\vspace{3em}
		\computeSignBoxWidth
		\hspace*{.5\textwidth}
		\begin{tabular}{l}
			{\makebox[\CSTHESIS@declarationwidth]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt{Signature}}}\\
			(\@authorTitle~\@authorName~\@authorLastname)\\
			{Candidate}\\
		\end{tabular}
		
	\end{onehalfspacing}
}

% ******************************* Bibliography *********************************
% The bibliography environment puts a large, bold, centered
% "Bibliography" label at the top of the page.

\newenvironment{CSbib}{
	\cleardoublepage
	\setsinglecolumn
	\parindent\z@\parskip\cftparskip%
	\begingroup
}
{
	\endgroup
	\newpage
}


% ****************************** Acknowledgments *******************************
% The acknowledgements environment puts a large, bold, centered
% "Acknowledgements" label at the top of the page.

\newenvironment{acknowledgements}{
	\cleardoublepage
	\onecolumn
%	\parindent\z@\parskip\cftparskip%
	\chapter*{ACKNOWLEDGEMENTS}
	\addcontentsline{toc}{chapter}{ACKNOWLEDGEMENTS}
	
	%\thispagestyle{empty}
	\begingroup
}
{
	\vspace{1em}
	\flushright
	\@authorName~\@authorLastname\\
	\vfill
	\endgroup
	\newpage
}

% ********************************** Abstract **********************************
\newenvironment{abstract} {
	% english abstract in the thesis
	\cleardoublepage
	\onecolumn
	
	\begin{flushleft}
		\begin{tabular*}{\textwidth}{@{}p{.2\textwidth} P{.78\textwidth}@{}}
			\textbf{Thesis Title} & \@title \\
			\textbf{Author}& \@authorTitle~\@authorName~\@authorLastname \\
			\textbf{Major Program}& \@majorProgram \\
			\textbf{Academic Year} & \@academicyear \\
		\end{tabular*}
	\end{flushleft}
	
	\vspace{2em}
	\begingroup
	\let\clearpage\relax
%	\parindent\z@\parskip\cftparskip%
	\chapter*{ABSTRACT}
	\addcontentsline{toc}{chapter}{ABSTRACT (English)}
}{%
	\endgroup
	\newpage
}

% ************************************ VITAE ***********************************
% The VITAE environment puts a large, bold, centered
% "VITAE" label at the top of the page.

\newenvironment{vitae}{
	\cleardoublepage
	\setsinglecolumn
	\parindent\z@\parskip\cftparskip%
	\chapter*{VITAE}
	\addcontentsline{toc}{chapter}{VITAE}
	
	\raggedright
	\begin{tabular*}{\textwidth}{@{}p{.18\textwidth} p{.8\textwidth}@{}}
		\textbf{Name} & \@authorTitle~\@authorName~\@authorLastname  \\
		\textbf{Student ID} & \@studentID \vspace{.3em}\\
	\end{tabular*}
}

% Set single column even under two column layout
\newcommand{\setsinglecolumn}{
	\if@twocolumn
	\onecolumn
	\else
	\fi
}

% Define: Adding details for Work and Publication
\newcommand{\vitaeEntries}[2]
{
	\setlength\parindent{0cm}	
	\textbf{#1}	
	\vspace{-.5em}
	{#2}
}

% Define: Create list of works
\newenvironment{vitaeItem}
{
	\begin{justify}
		\renewcommand{\labelitemi}{}
		\begin{itemize}[itemindent=1in, leftmargin=0in, itemsep=-0.5ex]
		}
		{
		\end{itemize}
	\end{justify}
}

% Define: Create list of publication
\newenvironment{pubItem}
{
	\begin{justify}
		\begin{itemize}[itemindent=1.16in, leftmargin=0in, itemsep=-0.5ex]		
}
{
		\end{itemize}
	\end{justify}
}



% ************************* Abbreviations and Symbols **************************
% The acknowledgements environment puts a large, bold, centered
% "Abbreviations and Symbols" label at the top of the page.

\newenvironment{abbreviations}{
	%\cleardoublepage
	\onecolumn
	\chapter*{\centering LIST OF ABBREVIATIONS AND SYMBOLS}
	\addcontentsline{toc}{chapter}{LIST OF ABBREVIATIONS AND SYMBOLS}
	
	\begingroup
}
{
	\vfill
	\endgroup
	\newpage
}

% ##############################################################################
% ############################# Macro Definitions ##############################
% ##############################################################################

% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

\newcommand{\@innerPageStyle}{Roman}
\newcommand{\innerPageStyle}[1]{\renewcommand{\@innerPageStyle}{#1}}

\newcommand{\@titleCover}{}
\newcommand{\titleCover}[1]{\renewcommand{\@titleCover}{#1}}

\newcommand{\@titleWidth}{\textwidth}
\newcommand{\titleWidth}[1]{\renewcommand{\@titleWidth}{#1}}

\newcommand{\@authorTitle}{}
%\newcommand{\authorTitle}[1]{\renewcommand{\@authorTitle}{#1}}

\newcommand{\@authorName}{}
%\newcommand{\authorName}[1]{\renewcommand{\@authorName}{#1}}

\newcommand{\@authorLastname}{}
%\newcommand{\authorLastname}[1]{\renewcommand{\@authorLastname}{#1}}

\newcommand{\@studentID}{}
%\newcommand{\studentID}[1]{\renewcommand{\@studentID}{#1}}

\newcommand{\authorInfo}[4]{
	\renewcommand{\@authorTitle}{#1}
	\renewcommand{\@authorName}{#2}
	\renewcommand{\@authorLastname}{#3}
	\renewcommand{\@studentID}{#4}
}

% The year and term the degree will be officially conferred
\newcommand{\@degreeyear}{\the\year}
\newcommand{\degreeyear}[1]{\renewcommand{\@degreeyear}{#1}}

% Academic year
\newcommand{\@academicyear}{\the\year}
\newcommand{\academicyear}[1]{\renewcommand{\@academicyear}{#1}}

% The full (unabbreviated) name of the degree
\newcommand{\@degree}{Doctor of Philosophy}
\newcommand{\degree}[1]{\renewcommand{\@degree}{#1}}

% Major Programe on cover page
\newcommand{\@majorProgramCover}{Computer Science \\(International Program)}
\newcommand{\majorProgramCover}[1]{\renewcommand{\@majorProgramCover}{#1}}

\newcommand{\@majorProgram}{Computer Science (International Program)}
\newcommand{\majorProgram}[1]{\renewcommand{\@majorProgram}{#1}}

% The name of your University
\newcommand{\@university}{Prince of Songkla University}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}

% Defining the crest
\newcommand{\@crest}{\includegraphics[width=2.36cm, height=3.43cm]{logo/psubw.png}}
\newcommand{\crest}[1]{\renewcommand{\@crest}{#1}}

% Submission Text
\newcommand{\submissiontext}{\coverNormalFont A Thesis Submitted in Fulfillment of the Requirements for the}

\newcommand{\@studyplan}{PhD1}
\newcommand{\studyplan}[1]{%
	\renewcommand{\@studyplan}{#1}
	\ifstrequal{#1}{PhD2}
	{%
		\renewcommand{\submissiontext}{\coverSmallFont A Thesis Submitted in Partial Fulfillment of the Requirements for the}
	}{}
}

% Approval Page
\newcommand{\@majoradvisor}{}
\newcommand{\majoradvisor}[1]{\renewcommand{\@majoradvisor}{#1}}

\newcommand{\@coadvisor}{}
\newcommand{\coadvisor}[1]{\renewcommand{\@coadvisor}{#1}}

\newcommand{\@chairperson}{}
\newcommand{\chairperson}[1]{\renewcommand{\@chairperson}{#1}}

\newcommand{\@committeeOne}{}
\newcommand{\committeeOne}[1]{\renewcommand{\@committeeOne}{#1}}

\newcommand{\@committeeTwo}{}
\newcommand{\committeeTwo}[1]{\renewcommand{\@committeeTwo}{#1}}

\newcommand{\@committeeThree}{}
\newcommand{\committeeThree}[1]{\renewcommand{\@committeeThree}{#1}}

\newcommand{\@committeeFour}{}
\newcommand{\committeeFour}[1]{\renewcommand{\@committeeFour}{#1}}

\newcommand{\@deanOfGraduateSchool}{}
\newcommand{\deanOfGraduateSchool}[1]{\renewcommand{\@deanOfGraduateSchool}{#1}}

\usepackage{afterpage}
\usepackage{pdfpages}

