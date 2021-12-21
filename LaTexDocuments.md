# LaTex Document Commands

### Basic syntax of a page
```
\documentclass[...]{...} 
...rest of preable... 
\begin{document} 
...document text here... 
\end{document}
```
## Preamble

- [options] specifies things like paper size and font size. 
- {class} states the document type. Article. letter, book or report.
``` 
\documentclass[options]{class} => \documentclass[a4paper, 12pt]{article} 
```

### Preable global options.
``` 
\topmargin, \headheight, \headsep, \textheight, \textwidth, \oddsidemargin, \evensidemargin => \headheight 0cm 
\setlength{\parident}{size} Set indent of the first line of a paragraph 
\setlength{\parskip}{class} Set distance between paragraphs 
\linespread{factor} Set spacing between lines 
```

### install package
```
\usepackage{package name}
```
## Main Document

The document is divided into sections. 
```
\section{section title} 
\section[short title for TOC]{long section title} 
\section*{section title} Remove section number associated with section. 
```
### Nesting sections and appendix
```
\section{section title}
\subsection{...}, \subsubsection{...} => deepest level of nesting.
\appendix => only needs to appear once, not closed out. Sections follow after this command.
```
### Cross-referencing
attach label to environment or section.
```
\label{name}
\ref{name}
\pageref{name}
```

### Title page
You can associate many properties with title page environment.
```
\begin{titlepage}
\today => print current date
\end{titlepage}
```

### Front matter
Includes, abstract, TOC, list of figures, list of tables
```
\begin{abstract}
\end{abstract}
=> insert constructed front matter
\tableofcontents
\listoffigures
\listoftables
\pagenumber{style} => \pagenumber{arabic} 
```

### Including external sources pages
```
\input{filename}
```

### Text appearance
```
\textbf{bold}
\textmd{Medium}
```

### New lines and inserting space
```
\\ or \newline will produce a newline
```
Horizontal and vertical space
```
\hspace{space} and \vspace{space}
```
Distributing text evenly across a page is done with \hfill.
Dots or a line can be placed in the space with \dotfill and \hrulefill respectively.

```
A \hrulefill \ B \hfill \ C \dotfill D
```
A_______________B &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C..................D


Inserting text at the bottom of a page is done with \vfill

### Body text formatting
Apply to an environment
```
\begin{flushleft}
\begin{center}
\begin{flushright}
```
Apply within an environment
```
\centering
\raggedright
\ragggedleft
```
### Lists
```
\begin{itemize}
\begin{enumerate}
\begin{description}
```
### Footnotes
```
\footnote{Footnote text}
```
### Mathematical Type
```
\begin{equation}
\end{equation}
Matrix =>
\left|\begin{array} {ccc}
1 & 2 & 3\\
4 & 5 & 6\\
7 & 8 & 9
\\end{array}\right|

| 1 2 3 |
| 4 5 6 |
| 7 8 9 |
```

### Figures and tables
Inserting images into document
```
\usepackage{graphicx}
\includegraphics[options]{path} =>
\includegraphics[width=14cm, angle=90]{../picture.jpg}
```
Declaring the figure environment will allow for captions and referencing.
```
\begin{figure}
\caption[short caption]{caption text}
\end{figure}
```
### Tables
Tables are inserted with the tabular environment.
```
\begin{tabular}{cols}
\end{tabular}
```
The cols argument specifies the appearance of the columns. Like an array they specify the justification in the columns as either: 

c: centred

l: left-justified

r: right-justified

p{width}: a left-justified multi-line column that is width wide.

### Bibliographies
```
\begin{thebibliography}{indent}
\end{thebibliography}
```