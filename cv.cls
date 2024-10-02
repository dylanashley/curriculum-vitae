%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template.
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com and Dylan Ashley
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{cv}[2019-11-03 v1.0 CV class]

\LoadClass[12pt,a4paper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{amsmath} % Required for bold bullet point
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{ebgaramond} % Set font to garamond
\usepackage[left=1in,top=.75in,right=1in,bottom=.75in]{geometry} % Set margins to 1 inch
\addtolength{\textheight}{-\footskip} % Make margins more empty
\usepackage[hidelinks]{hyperref} % Required for hyperlinks
\def\UrlBreaks{\do\.\do\@\do\\\do\/\do\!\do\_\do\|\do\;\do\>\do\]\do\)\do\,\do\?\do\'\do+\do\=\do\#\do-\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z\do0\do1\do2\do3\do4\do5\do6\do7\do8\do9} % Fix line breaks in urls

%----------------------------------------------------------------------------------------
%   HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \addressSep {$\diamond$} % Set default address separator to a diamond

% One, two or three address lines can be specified
\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax

% \address command can be used to set the first, second, and third address (last 2 optional)
\def \address #1{
  \@ifundefined{@addresstwo}{
    \def \@addresstwo {#1}
  }{
  \@ifundefined{@addressthree}{
  \def \@addressthree {#1}
  }{
     \def \@addressone {#1}
  }}
}

% \printaddress is used to style an address line (given as input)
\def \printaddress #1{
  \begingroup
    \def \\ {\addressSep\ }
    \centerline{#1}
  \endgroup
  \par
  \smallskip
}

% \printname is used to print the name as a page header
\def \printname {
  \begingroup
    \vspace*{-1em}
    \hfil{\MakeUppercase{\huge\bf \@name}}\hfil
    \vspace*{1em}\break
  \endgroup
}

%----------------------------------------------------------------------------------------
%   PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \vspace*{1.5em}
  \printname % Print the name specified with \name
  \@ifundefined{@addressone}{}{ % Print the first address if specified
    \printaddress{\@addressone}}
  \@ifundefined{@addresstwo}{}{ % Print the second address if specified
    \printaddress{\@addresstwo}}
  \@ifundefined{@addressthree}{}{ % Print the third address if specified
    \printaddress{\@addressthree}}
  \vspace*{0.25em}
}

%----------------------------------------------------------------------------------------
%   SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \smallskip
  \MakeUppercase{\bf #1} % Section title
  \medskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0.0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%   LINE FORMATTING
%----------------------------------------------------------------------------------------

\newcommand{\rLine}[3]{{\bf #1}, #2 \hfill #3 \vspace{0.15em}}
\newcommand{\rPlainLine}[2]{#1 \hfill #2 \vspace{0.15em}}

%----------------------------------------------------------------------------------------
%   EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[3]{ % 4 input arguments - title, year, subtitle
  {\bf #1} \hfill {#2}
  \vspace{0.05em}\\
  {\em #3}
  \vspace{0.05em}
  \begin{list}{$\boldsymbol{\cdot}$}{\leftmargin=1.5em \rightmargin=1.5em} % \cdot used for bullets
  \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.01em} % Some space after the list of bullet points
}

%----------------------------------------------------------------------------------------
%   PUBLICATIONS FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rPublications}{ % 4 input arguments - title, year, subtitle
  \vspace{0.75em}
  \begin{list}{}{\leftmargin=1.5em\rightmargin=1.5em\itemindent=-1.5em} % \cdot used for bullets
  \itemsep 0em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
}
