% ****************************************************
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{libs/ccnu_format}
\PassOptionsToPackage{svgnames}{xcolor} 
\LoadClass[compress, 10pt]{beamer}
\logo{\includegraphics[scale=0.11]{libs/emblemufc.pdf}
\hspace{9.0cm} \vspace{-0.2cm}}

% Packages Used
% ————————————————————————————————————————————————————
% ****************************************************
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage{pdfpages}
\RequirePackage{tcolorbox}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{fancybox}
\RequirePackage[footnotesize,hang]{caption}
\RequirePackage{beamerbaseoptions}

% colors
% ————————————————————————————————————————————————————
% ****************************************************
\definecolor{Deepblue}{RGB}{58, 26,64}
\definecolor{Blue}{RGB}{44, 84, 110}
\definecolor{blue_theme}{RGB}{116, 52, 129}
\definecolor{yellow}{RGB}{253, 184, 18}
\definecolor{black}{RGB}{0, 0, 0}
\definecolor{white}{RGB}{255, 255, 255}
\definecolor{red}{RGB}{215, 0, 0}
\definecolor{green_ufc}{RGB}{0, 146, 62}
\definecolor{Orange}{RGB}{245, 129, 31}
\definecolor{Light}{RGB}{113, 151, 172}
\definecolor{light}{RGB}{220, 230, 225}
\definecolor{Wine}{RGB}{136, 63, 75}
\definecolor{wine}{RGB}{226, 209, 211}

% style of the blocks ccnu
% ————————————————————————————————————————————————————
% ****************************************************
\beamerboxesdeclarecolorscheme{blockUFC}{blue_theme}{white}
\beamer@autopdfinfotrue
\beamer@notesnormalstrue
\usecolortheme[named=blue_theme]{structure}
\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}
\setbeamercolor{section in head/foot}{bg=blue_theme, fg=white}
\setbeamercolor{subsection in head/foot}{bg=Deepblue, fg=Orange}
\setbeamercolor{institute in head/foot}{bg=blue_theme, fg=white}
\setbeamerfont{block title}{size={}}

% bottom fields
% ————————————————————————————————————————————————————
% ****************************************************
\setbeamercolor{author in head/foot}{bg=Deepblue, fg=white}
\setbeamercolor{title in head/foot}{bg=Deepblue!90!white, fg=white}
\setbeamercolor{date in head/foot}{bg=blue_theme, fg=Orange}

% footer style
% ————————————————————————————————————————————————————
% ****************************************************
\defbeamertemplate*{footline}{infolines theme}
{
  \leavevmode
  \hbox{
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}
    \usebeamerfont{author in head/foot}\bfseries\insertshortauthor~~\insertshortinstitute
  \end{beamercolorbox}

  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}\color{white} \bfseries\insertshorttitle
    \usebeamerfont{title in head/foot}
  \end{beamercolorbox}
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}
    \usebeamerfont{date in head/foot}\color{white}\bfseries\insertshortdate{}\hspace*{2em}
    \insertframenumber{} / \inserttotalframenumber\hspace*{4ex} 
  \end{beamercolorbox}}
  \vskip0pt
}
\mode
<all>

% command of the example
% ————————————————————————————————————————————————————
% ****************************************************
\renewcommand{\example}[1]{\textcolor{blue_theme}{\textbf{#1}}}

% command of the emphases 
% ————————————————————————————————————————————————————
% ****************************************************
\renewcommand{\emph}[1]{\textcolor{red}{\textbf{#1}}}

% ====================================================
% create the blocks of the beamer template
% ====================================================

%% draw the blocks
% ————————————————————————————————————————————————————
% ****************************************************
\setbeamertemplate{blocks}[rounded][shadow=true]
 %\setbeamercolor{separation line}{use=structure,bg=Deepblue} % color on the top 

% block
% ————————————————————————————————————————————————————
% ****************************************************
\setbeamercolor*{block title}{fg=white, bg=Deepblue}
\setbeamercolor*{block body}{fg=black,bg=white}

% alert block
% ————————————————————————————————————————————————————
% ****************************************************
\setbeamercolor*{block title alerted}{fg=white,bg=Deepblue!90!white}
\setbeamercolor*{block body alerted}{fg=Blue,bg=light}

% example block
% ————————————————————————————————————————————————————
% ****************************************************
\setbeamercolor*{block title example}{fg=white,bg=blue_theme}
\setbeamercolor*{block body example}{fg=Deepblue,bg=wine}


% creating the environment the block
% ————————————————————————————————————————————————————
% ****************************************************
\usepackage{etoolbox}
\AtBeginEnvironment{exampleblock}{
  \setbeamercolor{itemize item}{fg=Wine,bg=Wine}
}
\AtBeginEnvironment{alertblock}{
  \setbeamercolor{itemize item}{fg=red!70}
}
\AtBeginEnvironment{block}{
  \setbeamercolor{itemize item}{fg=blue_theme!70}
}

% ====================================================
% determine some color for the text
% ————————————————————————————————————————————————————
% ****************************************************
\setbeamercolor*{normal text}{fg=Deepblue,bg=white}
\setbeamercolor*{example text}{fg=yellow}
\setbeamercolor*{alerted text}{fg=red}
\setbeamercolor{itemize item}{fg=blue_theme!70}
\setbeamercolor{enumerate item}{fg=black!70}
\setbeamercolor{success}{fg=green}

% create the alert box
% ————————————————————————————————————————————————————
% ****************************************************
\newcommand{\alertbox}[1]{
\begin{flushleft}
\fcolorbox{red}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the simple box
% ————————————————————————————————————————————————————
% ****************************************************
\newcommand{\simplebox}[1]{
\begin{flushleft}
\fcolorbox{blue_theme}{wine}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the success box
% ————————————————————————————————————————————————————
% ****************************************************
\newcommand{\successbox}[1]{
\begin{flushleft}
\fcolorbox{green_ufc}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the source of the image
% ————————————————————————————————————————————————————
% ****************************************************
\newcommand{\source}[1]{
    \caption*{\textcolor{blue_theme}{Note:} {#1}} 
}

% create a command for UFC
% ————————————————————————————————————————————————————
% ****************************************************
\newcommand{\ccnu}{
  \bfseries
  \normalsize{Central China Normal University}
}

% department command
% ————————————————————————————————————————————————————
% ****************************************************
\newcommand{\department}[1]{
    \vspace*{0.2cm}
    \bfseries
    \normalsize{#1}
}

% ————————————————————————————————————————————————————
% ****************************************************
\newcommand{\email}[1]{
    \texttt{
      \href{mailto:#1}{#1}
    }
}

 
