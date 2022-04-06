%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Freeman Motivation Letter 
%
% This class is a modification of:
% https://www.LaTeXTemplates.com
% License:
%
% CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FreemanCV}[2021/09/03 Freeman CV Class v3.0]

% Pass through any extra options specified to the base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} 
\ProcessOptions\relax % Process class options

% Load the base class
\LoadClass{article}

%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES AND MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------

% Required for conditional logic and changing commands
\usepackage{etoolbox} 

% Paragraph indentation
\setlength{\parindent}{0pt}

% Required for the supertabular environment which allows tables to span
% multiple pages so sections with tables correctly wrap across pages
\usepackage{supertabular} 

% Allows using more default font sizes as a class option
\usepackage{extsizes} 

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------

\usepackage[
	% Paper size
	a4paper, 
	% Top margin
	top=1.75cm, 
	% Bottom margin
	bottom=1.75cm,
	% Left margin
	left=2.5cm,
	% Right margin
	right=2.5cm,
	% Space from the bottom margin to the baseline of the footer
	footskip=1cm, 
	% Space from the top margin to the baseline of the header
	headsep=0.5cm, 
	% Height of the header
	headheight=1cm,
	% Uncomment to show frames around the margins for debugging purposes
	%showframe 
]{geometry}

%----------------------------------------------------------------------------------------
%	COLUMN LAYOUT
%----------------------------------------------------------------------------------------

 % Required for creating multi-column layouts that can span pages automatically
\usepackage{paracol}

% Paracols have default paragraph indentation and this overrides it to the
% template default of no indentation
\AtBeginEnvironment{paracol}{\setlength{\parindent}{0pt}}

 % Amount of horizontal space between the columns
\setlength\columnsep{0.05\textwidth}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

% Required for specifying custom fonts under XeLaTeX
\usepackage{fontspec} 

 % To support LaTeX ligatures (e.g. `` and --)
\defaultfontfeatures{Ligatures=TeX}

% Specify the location of font files
\defaultfontfeatures{Path=Fonts/} 

% The serif font used by default or explicitly with \textrm{}/\rmfamily
\setmainfont{EBGaramond}[
	UprightFont=*-Regular.ttf,
	BoldFont=*-Bold.ttf,
	BoldItalicFont=*-BoldItalic.ttf,
	ItalicFont=*-Italic.ttf,
	SmallCapsFont=*-SC.ttf
	%SmallCapsFont=eb-garamond.smallcaps-08-regular.ttf
]

% The sans serif font used explicitly with \textsf{}\sffamily
\setsansfont{LibertinusSans}[
	UprightFont=*-Regular.otf,
	BoldFont=*-Bold.otf,
	ItalicFont=*-Italic.otf
]

% New font family for the cursive font Freebooter Script
\newfontfamily{\cursivefont}{freebooterscript} 

% Create a new font family for FontAwesome icons
\newfontfamily{\FA}{FontAwesome} 

% Load a file to create shortcuts to the icons, see icon examples and their
% shortcuts in fontawesome.pdf in the Fonts folder
\input{Fonts/fontawesomesymbols-xeluatex.tex} 

%------------------------------------------------------------------------------
%	HEADERS & FOOTERS
%------------------------------------------------------------------------------

% Required for customizing headers and footers
\usepackage{fancyhdr} 

 % Enable custom headers and footers
\pagestyle{fancy}

 % Remove the default rule under the header
\renewcommand{\headrulewidth}{0pt}

% Clear default headers/footers by default, add headers and footers in the
% template file as per the example
\fancyhf{} 

%------------------------------------------------------------------------------
%	SECTIONS
%------------------------------------------------------------------------------

% Required for modifying sections, the nobottomtitles* pushes section titles to
% the next page when they are close to the bottom of the page
\usepackage[nobottomtitles*]{titlesec} 

% The minimal space required from the bottom margin so a section title isn't
% moved to the next page
\renewcommand{\bottomtitlespace}{0.05\textheight} 

\titleformat
	% Section type being modified
	{\section} 
	% Section layout type, can be: hang, block, display, runin, leftmargin,
	% rightmargin, drop, wrap, frame
	[block] 
	% Text formatting of the whole section, i.e. label and title
	{\color{headings}\scshape\LARGE\raggedright} 
	% Section label (e.g. number) and its formatting
	{} 
	% Horizontal space between the section label and title
	{0pt} 
	% Code before the section title
	{} 
	% Code after the section title
	[\color{black}\titlerule]

% Spacing around section titles, the order is: left, before and after
\titlespacing*{\section}{0pt}{0pt}{8pt} 

%------------------------------------------------

\titleformat
	% Section type being modified
	{\subsection} 
	% Section layout type, can be: hang, block, display, runin, leftmargin,
	% rightmargin, drop, wrap, frame
	[block] 
	% Text formatting of the whole section, i.e. label and title
	{\itshape} 
	% Section label (e.g. number) and its formatting
	{}
	% Horizontal space between the section label and title
	{0pt} 
	% Code before the section title
	{}
	% Code after the section title
	[]

 % Spacing around section titles, the order is: left, before and after
\titlespacing*{\subsection}{0pt}{8pt}{3pt}

%------------------------------------------------------------------------------
%	COLORS
%------------------------------------------------------------------------------

% Required for defining and using custom colors
\usepackage[usenames, svgnames]{xcolor} 

% Main document text color, off-black
\definecolor{text}{HTML}{2b2b2b}

% Dark red color for headings
\definecolor{headings}{HTML}{701112} 

% Light blue color for box
\definecolor{shade}{HTML}{e0e1ee}

% 25% desaturated headings color for links
\definecolor{linkcolor}{HTML}{641c1d} 

% Set the default text color
\color{text}

%------------------------------------------------------------------------------
%	LINKS
%------------------------------------------------------------------------------

\usepackage{hyperref} % Required for links

\hypersetup{
	% Whether to color the text of links
	colorlinks=true, 
	% Color for \url and \href links
	urlcolor=linkcolor, 
	% Color for \nameref links
	linkcolor=linkcolor,
}

