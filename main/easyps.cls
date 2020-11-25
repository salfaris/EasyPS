% SPDX-License-Identifier: BSD-3-Clause
% Copyright (c) 2020, Salman Ahmad Faris
% https://github.com/salfaris/EasyPS

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{easyps}[2020/11/23 EasyPS class]

\LoadClass[12pt]{article}

% REQUIRED PACKAGES
\RequirePackage{lipsum}
\RequirePackage{mathptmx}
\RequirePackage{geometry}

% LAYOUT SETTINGS
\geometry{a4paper, margin=1in}
\setlength{\parskip}{0.5em}
\linespread{1.}

% TITLE SETTINGS
\def\@courseName{Course Name Here}
\newcommand*{\courseName}[1]{%
    \def\@courseName{#1}%
}

\def\@studentName{Student Name Here}
\newcommand*{\studentName}[1]{%
    \def\@studentName{#1}%
}

\def\@psForUniversity{cambridge}
\newcommand*{\psForUniversity}[1]{\def\@psForUniversity{#1}}
\newcommand*{\uniName}{\@psForUniversity}

\title{%
    \@studentName\ --- Personal Statement for \@courseName\
}

\renewcommand{\@maketitle}{%
  \begin{center}
    \parskip
    \baselineskip
    \parindent=0pt
    \bf\@title\par   
  \end{center}
}

\def\@showTitle{true}
\newcommand*{\showTitle}[1]{\def\@showTitle{#1}}

\newcommand{\generateTitle}{%
    \def\@trueText{true}\def\@falseText{false}%
    \ifx\@showTitle\@trueText
        \maketitle
    \else
        \ifx\@showTitle\@falseText
        \else
            \ClassError{Statement}{Expected only true/false for showTitle}{}
        \fi
    \fi
}

% CONTENT SETTINGS
\newcommand{\contentdir}{content}