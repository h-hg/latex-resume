\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2022/11/28 An elegant Chinese Résumé class]
\LoadClass[
    UTF8,
    10pt,
    scheme=plain,
    %fontset=none
]{ctexart}

% \input{fontsettings.tex}

% reset the style of \emph and \strong, more details can be found in docs of  fontspec
\emfontdeclare{\kaishu\itshape}
\strongfontdeclare{\heiti\bfseries}

% layout
% ms office shadow 1.27cm for left, right, top and bottom
\RequirePackage[
    a4paper,
    left=3.18cm,
    right=3.18cm,
    top=2.54cm,
    bottom=2.54cm,
    nohead,
    nofoot
]{geometry}


% suppress displaying page number
\pagenumbering{gobble}

% figure
\RequirePackage{graphicx}

% table
\RequirePackage{multirow}

% disable indent globally
\setlength{\parindent}{0pt}

\RequirePackage{float}

% use xifthen
\RequirePackage{xifthen}

% use hyperlink for email and url
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    pdfborderstyle={/S/U/W 1},
}

% use fontawesome
\RequirePackage{fontspec}
%\defaultfontfeatures{Extension = .otf} % conflict with the settings of chinese font
%\RequirePackage{fontawesome}
\RequirePackage{fontawesome5}
\RequirePackage{academicons}

% itemize, 
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
% setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{label=\faAngleRight,topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
%\setlist[itemize,1]{label=\faAngleRight, nosep, leftmargin=2em}
\setlist[description]{topsep=0.25em}

\RequirePackage{titlesec}
\titleformat{\section}                      % Customise the \section command 
{\large\scshape\raggedright\heiti\bfseries} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                                     % Can be used to give a prefix to all sections, like 'Section ...'
{}                                          % Can be used to insert code before the heading
[\titlerule]                                % Inserts a horizontal line after the heading
% \titlespacing*{⟨command⟩}{⟨left⟩}{⟨beforesep⟩}{⟨aftersep⟩}[⟨right⟩]
% *0.5 = 0.5ex
\titlespacing*{\section}{0cm}{*0.5}{*1}

\titleformat{\subsection}
{\normalsize\raggedright\heiti\bfseries}
{}{0em}
{}
\titlespacing*{\subsection}{0cm}{*0.5}{*0.5}

\titleformat{\subsubsection}
{\normalsize\raggedright\heiti}
{}{0em}
{}
\titlespacing*{\subsubsection}{0cm}{*0.5}{*0.5}

\newcommand{\datedsection}[2]{%
    \section[#1]{#1 \hfill \normalfont{#2}}%
}
\newcommand{\datedsubsection}[2]{%
    \subsection[#1]{#1 \hfill \normalfont{#2}}%
}
\newcommand{\datedsubsubsection}[2]{%
    \subsubsection[#1]{#1 \hfill \normalfont{#2}}%
}

\newcommand{\datedline}[2]{%
    {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
    % \centerline{\LARGE\textbf{\scshape{#1}}}
    {\par \LARGE\heiti\bfseries\scshape{#1} \par}
    \vspace{0.5ex}
}
