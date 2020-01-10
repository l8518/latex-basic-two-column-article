\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{basictwocolumnarticle}[2019/01/01 Simple LaTeX Layout]
\LoadClass[twocolumn]{article}

% Mandatory Packages
\usepackage{geometry, biblatex, float, graphicx}
\usepackage[utf8]{inputenc}

% Setting the page size
\geometry{a4paper, left=15mm, right=15mm, top=10mm, bottom=25mm}

% Configure packages / document settings:
\graphicspath{{img/}}

% Setup Title Layout
\makeatletter
    \def\@maketitle{%
  %\newpage
  %\null
  %\vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 0.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    %\vskip 1em%
    %{\large \@date}%
  \end{center}%
  \par
  %\vskip 1.5em
  }
\makeatother
