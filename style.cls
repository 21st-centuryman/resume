\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{Style}[2022/11/21 Resume styling]

\LoadClass[9pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage{titlesec, titling, setspace, enumitem}
\RequirePackage[margin=5em]{geometry}
\RequirePackage{changepage}   % for the adjustwidth environment


\renewcommand{\familydefault}{\sfdefault}   % Changes font to san serif
\thispagestyle{empty}                       % Removes page count
\linespread{1.10}                           % Adds some better spacing

% Formatting Sections
\titleformat{\section}
    {\Large}
    {}
    {0em}
    {\textit} [\titlerule]

\titlespacing*{\section}{0pt}{0.5\baselineskip}{0.5\baselineskip}

% Formatting company and institutions
\newcommand{\company}[2]{
    {\noindent\bfseries{#1}}
    \hfill{#2}
    \\
}

% Formatting title, positions, and other roles 
\newcommand{\titles}[3]{
    {\noindent\textit{#1}}
    \hfill
    {#2}
    \begin{adjustwidth}{3em}{10em}
    \noindent{#3}
    \end{adjustwidth}
}

\newcommand{\project}[4]{
    {\noindent\textbf{#1}}
    \hfill
    {#2}
    \begin{adjustwidth}{3em}{10em}
    \noindent{#3}
    \end{adjustwidth}
    \begin{adjustwidth}{3em}{10em}
    \noindent\textit{#4}
    \end{adjustwidth}
}
% Formatting others section
\newcommand{\other}[2]{
    {\noindent\bfseries{#1}:}
    {#2}
}

% Formatting references note
\newcommand{\refrence}[1]{
    \small\hfill{#1}
    \vspace{.1em}
}
