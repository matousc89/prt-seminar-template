%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prtclass}[2014/08/16 Example class]
%%Preliminary definitions, needed by the options
\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[10pt]{article}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

\usepackage[utf8]{inputenc}
\usepackage{sectsty}
\usepackage{geometry}
\usepackage{mathptmx} % ERROR
\usepackage{newtxtext,newtxmath}
\usepackage{calc}
\usepackage{fancyhdr}
% \usepackage[fleqn]{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{graphicx}
\usepackage{indentfirst}
\usepackage{multirow}
\usepackage{blindtext}

\usepackage{caption}
\usepackage{floatrow}
\usepackage{pythonhighlight}
\floatsetup[table]{capposition=top}

\pagenumbering{gobble}

\bibliographystyle{unsrt}

\sectionfont{\fontsize{12}{14}\selectfont\bfseries\Large\raggedright}

\def\headertitle#1{\def\@headertitle{#1}}
\newcommand{\printheadertitle}{\@headertitle}
\headertitle{}

\def\headerauthor#1{\def\@headerauthor{#1}}
\newcommand{\printheaderauthor}{\@headerauthor}
\headerauthor{}

\def\address#1{\def\@address{#1}}
\newcommand{\printaddress}{\@address}
\address{}

\def\abstractCZ#1{\def\@abstractCZ{#1}}
\abstractCZ{}

\def\abstractEN#1{\def\@abstractEN{#1}}
\abstractEN{}

\def\keywordsCZ#1{\def\@keywordsCZ{#1}}
\keywordsCZ{}

\def\keywordsEN#1{\def\@keywordsEN{#1}}
\keywordsEN{}



\geometry{
 a4paper,
 total={170mm,257mm},
 left=25.4mm,
 right=25.4mm,
 top=25.4mm,
 bottom=25.4mm,
 }
 
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyfoot[R]{\thepage}
\rhead{\fontsize{10}{12}\selectfont \textbf{\printheadertitle} }
\lhead{\fontsize{10}{12}\selectfont \textbf{\printheaderauthor} }
\renewcommand{\headrulewidth}{0pt}


%%This parts handles the options passed to the class.
\DeclareOption{cz}{
\renewcommand{\figurename}{Obr.}
\renewcommand\tablename{Tab.}
\renewcommand\refname{Literatura}
}
\DeclareOption{en}{
\renewcommand{\figurename}{Fig.}
\renewcommand\tablename{Tab.}
\renewcommand\refname{Literature}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%%Body of the class, most of the declarations appear here.
\renewcommand{\maketitle}{%
        ~\vspace{25.4mm}~
        \begin{center}
            \fontsize{16}{17}\selectfont \textbf{\@title}
            \vspace{10mm}   
            \\
            \fontsize{12}{14}\selectfont \textbf{\textit{\@author}} 
            \vspace{3mm}
            \\
            \fontsize{9}{11}\selectfont \textbf{\textit{\@address}} 
            \\
            \hspace{10.1mm}
            \\
            \begin{minipage}{\textwidth-30.2mm}
            \fontsize{9}{11}\selectfont \textit{Abstrakt: \@abstractCZ}
            \\
            \fontsize{9}{11}\selectfont \textit{Klíčová slova: \@keywordsCZ} 
            \\
            \vspace{6mm}
            \\
            \fontsize{9}{11}\selectfont \textit{Abstract: \@abstractEN} 
            \\
            \fontsize{9}{11}\selectfont \textit{Keywords: \@keywordsEN} 
            \end{minipage}



                        
            
        \end{center}
}
