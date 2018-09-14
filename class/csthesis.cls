%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                            %%
%% Class ``csthesis''                                                         %%
%%                                                                            %%
%% A CS.PSU thesis LaTeX template for PhD.International Program               %%
%% Department of Computer Science, Prince of Songkla University               %%
%%                                                                            %%
%% Version: v1.0.0                                                            %%
%% Created by: Naphat Keawpibal                                               %%
%% Date: 2018/01/24                                                           %%
%% License: CS License (c) 2018                                               %%
%% Based on: https://github.com/sdayu/PSU-thesis-latex-template               %%
%% Git repo:                                                                  %%
%% Acording to PSU thesis manual http://www.grad.psu.ac.th/thesis_manual.php  %%
%%                                                                            %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ************************** Class Identification **************************** %
\newcommand\fileversion{1.0.0}
\newcommand\filedate{2018/01/24}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../class/csthesis}[\filedate\space A Computer Science thesis class file
 by Naphat Keawpibal (v\fileversion)]
\typeout{PhD.International Program --- department of Computer Science, Prince of Songkla University}

% ******************************************************************************
% *****                       Pre-defined Options                          *****
% ******************************************************************************
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





% ******************************************************************************
% *****                         Packages                                   *****
% ******************************************************************************
% ********************* Page Layout *********************
%% margin left = 1.5in, right = 1in, top = 1.5in, bottom = 1in
\RequirePackage[left=1.5in,right=1in,top=1.5in,bottom=1in]{geometry}
\RequirePackage{lscape}  			% Supports Landscape Layout
\usepackage{pdflscape}				% Rotate PDF
\RequirePackage{rotating}  			% Supports Landscape Layout
\RequirePackage[final]{microtype}

% ********************* Front matter *********************
\RequirePackage{setspace}		% Define line spacing in paragraph
\RequirePackage{calc}    		% To calculate vertical spacing
\usepackage{etoolbox}			% If then, logical operation
\RequirePackage{graphicx}			% Image, figure
\usepackage{hyphenat}			% Hyphenation
\usepackage{array}		
\usepackage{amsmath,amsthm}
\usepackage{amssymb,amsfonts}



% ********************* Print counter number: 1st, 2nd, 3rd, 4th *********************
\usepackage{engord}
\engordraisetrue

% ********************* Header, Footer *********************
\RequirePackage{fancyhdr}

% ********************* Formatting *********************
\usepackage{enumitem}
\usepackage{titlesec}			% Format title, section
\usepackage{indentfirst}		% Every first line go to indent
\usepackage{ragged2e}			% ragged-left and -right for justification

% ********************* Table of contents and appendix *********************
\RequirePackage[nottoc]{tocbibind}				% add Bibliography, List of figures and tables to contents
\RequirePackage[toc,title,titletoc,page]{appendix}
\usepackage{titletoc}
\RequirePackage{tocloft}

\renewcommand{\appendixtocname}{APPENDICES}
\renewcommand{\appendixpagename}{APPENDICES}


% ********************* Algorithm *********************
\usepackage[chapter]{algorithm}
\usepackage{algpseudocode}

% ********************* Sub Figure *********************
%\usepackage[list=on]{subcaption}			% add sub figure
\usepackage{caption}
\usepackage[caption=false]{subfig}
%\captionsetup[figure]{labelsep=space}
%\captionsetup[table]{labelsep=space}
\captionsetup[figure]{labelfont=bf}
\captionsetup[table]{labelfont=bf}

% ********************* Sub File *********************
\usepackage{subfiles}

% ********************* Table *********************
\usepackage{threeparttablex}	% add note under table
\usepackage{longtable}			% table in multiple page
\usepackage{multirow}			% multiple rows
\usepackage{booktabs}
\usepackage{makecell}

% ********************* URL *********************
\RequirePackage{url}
\newcommand{\url@leostyle}{%
 \@ifundefined{selectfont}{\renewcommand{\UrlFont}{\sffamily}}
 {\renewcommand{\UrlFont}{\normalsize}}}
\urlstyle{leo}

% ********************* Hyperreferencing *********************
\RequirePackage{hyperref}			% Define hyperrefering

% ********************* AuthorYear Reference *********************
%\RequirePackage[round, sort, numbers, authoryear]{natbib}		% author-year reference
\RequirePackage[numbers, sort&compress, square]{natbib}			% IEEE style reference

\renewcommand{\cite}[1]{\citep{#1}}

\RequirePackage{atbegshi}							% At Begin, End document
\usepackage{longtable}
\usepackage{tabularx}
\usepackage[table]{xcolor}



% ******************************************************************************
% ********************* Table of Contents & Appendices *************************
% ******************************************************************************

\setcounter{lofdepth}{1}
%\setcounter{tocdepth}{3}

\newcommand{\contenttopchapter}{\textbf{Chapter}}
\newcommand{\contenttoptable}{\textbf{Table}}
\newcommand{\contenttopfigure}{\textbf{Figure}}
\newcommand{\contenttopalgorithm}{\textbf{Algorithm}}
\newcommand{\contenttoppage}{\textbf{Page}}

\renewcommand{\bibname}{BIBLIOGRAPHY}
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\listalgorithmname}{LIST OF ALGORITHMS}
\renewcommand{\appendixname}{APPENDIX}


% ********************* Header Table of Contents
\AtBeginDocument{%
	\setlength{\parskip}{1ex}			% The length parameter that characterises the paragraph spacing 
	%\setlength{\baselineskip}{.6em}	% vertical spacing within paragraph
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
	}
	
	\renewcommand{\listoftables}{
		%\newpage
		\cleardoublepage
		\begingroup%
		\parindent\z@\parskip\cftparskip%
		\CSContentsHeader{\listtablename}{}{\contenttoptable}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\listtablename}
		\@starttoc{lot}%
		\endgroup%
	}
	
	\renewcommand{\listoffigures}{
		%\newpage
		\cleardoublepage
		\begingroup%
		\parindent\z@\parskip\cftparskip%
		\CSContentsHeader{\listfigurename}{}{\contenttopfigure}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\listfigurename}
		\@starttoc{lof}%
		\endgroup%
	}
	
	
	\renewcommand{\listofalgorithms}{%
		%\newpage
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
	}

}

\AtEndDocument{
  \newpage\null\thispagestyle{empty}\newpage
}


% ********************* Header Table of Contents *********************

\newcommand{\CSContentsHeader}[4]{
	\chapter*{#1#2} \noindent #3 \hfill #4\par\kern0.2\baselineskip
}

\newcommand{\tocheading}{\bfseries\par\bigskip\MakeUppercase{\chaptername}\hfill\par}

\renewcommand{\cftchapindent}{0em}
\renewcommand{\cftsecindent}{2.5em}
\renewcommand{\cftsubsecindent}{5em}
\renewcommand{\cftfigindent}{0em}
\renewcommand{\cfttabindent}{0em}

\titlecontents{chapter}% <section-type>
	[0pt]% <left>
	{\vspace{1em}}% <above-code>
	{\hspace{1em}\scshape\bfseries\hyperlink{chapter.\thecontentslabel}{\thecontentslabel\quad}}% <numbered-entry-format>
	{\thecontentslabel}% <numberless-entry-format>
	{\bfseries\hfill\contentspage}% <filler-page-format>
	%{\normalfont\titlerule*[1.5ex]{.}\contentspage}% <filler-page-format>
 

% ******************************* Appendices **********************************

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
  		%{\bfseries\appendixname\ \thecontentslabel\quad}% <numbered-entry-format>
  		{\bfseries\thecontentslabel}% <numberless-entry-format>
  		{\normalfont\titlerule*[1.5ex]{.}\contentspage}% <filler-page-format>			
}



% ******************************************************************************
% **************************** Pre-defined Settings ****************************
% ******************************************************************************
% Default Font family
%\renewcommand{\familydefault}{\rmdefault}
\usepackage{times}


% ************************* Line Spacing
%\renewcommand{\baselinestretch}{1}		% vertical line spacing between sections

% *************************  chapter format
\titleformat
{\chapter} % command
[display] % shape
{\bfseries\large} % format
{\filcenter\MakeUppercase{\chaptertitlename}\ \thechapter} % label
{.75em} % sep
{
    \vspace{1ex}
    \centering
	\scshape
} % before-code
[
\vspace{1em}%
] % after-code
\titlespacing{\chapter}{0pt}{-3em}{0pt}

\titleformat{\section} [block]
  {\normalfont\bfseries}{\thesection}{1ex}{}\titlespacing{\section}{0pt}{1em}{0em}
\titleformat{\subsection} [block]
  {\normalfont\bfseries}{\thesubsection}{1ex}{}
\titleformat{\subsubsection} [block]
  {\normalfont\bfseries}{}{1ex}{}


\setlength{\parindent}{1in}
\setcounter{secnumdepth}{2}

% ************************* header format
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\setlength{\headheight}{15pt}
\setlength{\topmargin}{-0.1in}
\setlength{\headsep}{0.4in}

\fancypagestyle{plain}{
\fancyhead{}
\fancyhf{}

\fancyhead[R]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

% ************************* Hyperreferencing
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





% ******************************************************************************
% *****               Function Computing Empty Space                       *****
% ******************************************************************************

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
				{\bfseries{\fontsize{14.09}{14} \selectfont \@titleCover}\par}
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
				{\bfseries{\fontsize{14.09}{14} \selectfont \@authorName~~\@authorLastname} \par}
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
				{\bfseries{\fontsize{13.61}{13} \selectfont \submissiontext}}
				{\bfseries{\fontsize{14.09}{14} \selectfont Degree of {\@degree} in {\@majorProgramCover}}\par}
				{\bfseries{\fontsize{14.09}{14} \selectfont \@university}\par}
				{\bfseries{\fontsize{14.09}{14} \selectfont \@degreeyear}\par}
				{\bfseries{\fontsize{14.09}{14} \selectfont Copyright of \@university}\par}
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


% ******************** To compute sign box in approve page ********************

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



% ******************************************************************************
% *************************** Front Matter Layout ******************************
% ******************************************************************************

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
\mbox{}
\clearpage
%\addtocounter{page}{1}
}

\newenvironment{innertitlepage} % changed from "newenvironment"
{%
\begingroup
\newpage
\pagenumbering{roman}
\setcounter{page}\z@ 
\addtocounter{page}{1}
}%
{
\endgroup
\clearpage
}

\newenvironment{othertitlepage} % changed from "newenvironment"
{%
\begingroup
\newpage
%\fontfamily{ptm}
}%
{
\endgroup
\clearpage
}


% ******************************** Title Page ***********************************
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
	
		{\bfseries{\fontsize{14.09}{14} \selectfont \@titleCover}\par}
		\vspace{.5\CSTHESIS@titlepagespacing}
	
		{\bfseries{\fontsize{14.09}{14} \selectfont \@authorName~~\@authorLastname}\par}
		\vspace{.5\CSTHESIS@titlepagespacing}
	
		{\bfseries{\fontsize{13.61}{13} \selectfont \submissiontext}\par}
		{\bfseries{\fontsize{14.09}{14} \selectfont Degree of {\@degree} in {\@majorProgramCover}}\par}
		{\bfseries{\fontsize{14.09}{14} \selectfont \@university}\par}
		{\bfseries{\fontsize{14.09}{14} \selectfont \@degreeyear}\par}
		{\bfseries{\fontsize{14.09}{14} \selectfont Copyright of \@university}\par}
	\end{center}
\end{doublespacing}
}


% ******************************* Approval Page ********************************

\newcolumntype{P}[1]{>{\raggedright\arraybackslash}p{#1}}

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


% ******************************* Declaration Page ********************************
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

% ****************************** Acknowledgements ********************************
% The acknowledgements environment puts a large, bold, centered
% "Acknowledgements" label at the top of the page.

\newenvironment{acknowledgements}{
\cleardoublepage
\onecolumn
\chapter*{\centering ACKNOWLEDGMENTS}
\addcontentsline{toc}{chapter}{ACKNOWLEDGEMENTS}


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



% ****************************** Abstract ********************************
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
\chapter*{\centering ABSTRACT}
\addcontentsline{toc}{chapter}{ABSTRACT (English)}
}{%
\endgroup
\newpage
}

% ****************************** VITAE ********************************
% The VITAE environment puts a large, bold, centered
% "VITAE" label at the top of the page.

\newenvironment{vitae}{
\cleardoublepage
\setsinglecolumn

\chapter*{\centering VITAE}
\addcontentsline{toc}{chapter}{VITAE}

%\thispagestyle{empty}
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


% ****************************** Abbreviations and Symbols ********************************
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



% ******************************************************************************
% **************************** Macro Definitions *******************************
% ******************************************************************************
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

\newcommand{\@titleCover}{}
\newcommand{\titleCover}[1]{\renewcommand{\@titleCover}{#1}}

\newcommand{\@titleWidth}{\textwidth}
\newcommand{\titleWidth}[1]{\renewcommand{\@titleWidth}{#1}}

\newcommand{\@authorTitle}{}
\newcommand{\authorTitle}[1]{\renewcommand{\@authorTitle}{#1}}

\newcommand{\@authorName}{}
\newcommand{\authorName}[1]{\renewcommand{\@authorName}{#1}}

\newcommand{\@authorLastname}{}
\newcommand{\authorLastname}[1]{\renewcommand{\@authorLastname}{#1}}

\newcommand{\@studentID}{}
\newcommand{\studentID}[1]{\renewcommand{\@studentID}{#1}}

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
\newcommand{\submissiontext}{A Thesis Submitted in Fulfillment of the Requirements for the}

\newcommand{\@studyplan}{PhD1}
\newcommand{\studyplan}[1]{%
	\renewcommand{\@studyplan}{#1}
	\ifstrequal{#1}{PhD2}
	{%
	\renewcommand{\submissiontext}{A Thesis Submitted in Partial Fulfillment of the Requirements for the}
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

