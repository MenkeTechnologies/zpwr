#!/usr/bin/env python3
"""Generate zpwr-encyclopedia.tex from wizard page files."""
import os, re, glob, sys

pagedir = sys.argv[1] if len(sys.argv) > 1 else os.path.expanduser("~/.zpwr/docs/wizard_pages")
outfile = sys.argv[2] if len(sys.argv) > 2 else os.path.expanduser("~/.zpwr/docs/zpwr-encyclopedia.tex")
pages = sorted(glob.glob(os.path.join(pagedir, "page_*.zsh")))

def extract_page(filepath):
    with open(filepath) as f:
        content = f.read()
    title = chapter = ""
    prints = []
    m = re.search(r'PAGE_TITLE="(.*?)"', content)
    if m: title = m.group(1)
    m = re.search(r'PAGE_CHAPTER="(.*?)"', content)
    if m: chapter = m.group(1)
    for line in content.split('\n'):
        line = line.strip()
        if line.startswith('print '):
            m = re.match(r'print\s+"(.*)"$', line) or re.match(r"print\s+'(.*)'$", line)
            if m: prints.append(m.group(1))
    return title, chapter, prints

def escape_latex(text):
    for old, new in [('\\','\\textbackslash{}'), ('&','\\&'), ('%','\\%'), ('#','\\#'),
                      ('_','\\_'), ('{','\\{'), ('}','\\}'), ('~','\\textasciitilde{}'),
                      ('^','\\textasciicircum{}'), ('$','\\$')]:
        text = text.replace(old, new)
    text = text.replace('\\textbackslash\\{\\}', '\\textbackslash{}')
    return text

def strip_colors(text):
    text = re.sub(r'\$\{[A-Z]+\}', '', text)
    text = re.sub(r'\$[A-Z]', '', text)
    text = re.sub(r'\\033\[[0-9;]*m', '', text)
    return text.strip()

def convert_line(text):
    original = text
    clean = escape_latex(strip_colors(text))
    if not clean: return None
    if any(c in text for c in '\u250c\u2514\u2510\u2518\u2502\u2500\u2550'): return None
    if '===' in clean or '<<<' in clean or '>>>' in clean:
        return ('heading', clean.replace('===','').replace('<<<','').replace('>>>','').strip())
    if '${B}${Y}' in original or '${B}${M}' in original:
        return ('section_title', clean)
    cmd_words = ['zpwr','perl','fd ','rg ','bat ','eza','strace','ltrace','temprs','prefix',
                 'Ctrl','bindkey','tmux','vim ','git ','brew','apt','pip','npm','cargo',
                 'lsofrs','ccze','grc','ponysay','figlet','cowsay','zunit']
    if ('${M}' in original or '${C}' in original) and any(w in text for w in cmd_words):
        return ('command', clean)
    if '${D}' in original and '//' in text:
        return ('comment', clean)
    return ('text', clean)

PREAMBLE = r'''\documentclass[11pt,a4paper,twoside]{book}
\usepackage[margin=2.5cm,top=3cm,bottom=3cm,headheight=22pt]{geometry}
\usepackage{xcolor}
\usepackage{fontspec}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{hyperref}
\usepackage{parskip}
\usepackage{microtype}
\usepackage{tikz}
\usepackage{bookmark}
\usepackage{tcolorbox}
\tcbuselibrary{skins,breakable}

\definecolor{bg}{HTML}{06060C}
\definecolor{neoncyan}{HTML}{00F0FF}
\definecolor{neonpink}{HTML}{FF2CF0}
\definecolor{neongreen}{HTML}{39FF14}
\definecolor{neonyellow}{HTML}{FFE500}
\definecolor{neonred}{HTML}{FF003C}
\definecolor{neonorange}{HTML}{FF6B00}
\definecolor{dimtext}{HTML}{8888AA}
\definecolor{bodytext}{HTML}{C8C8E0}
\definecolor{codebg}{HTML}{0C0C18}
\definecolor{ruleglow}{HTML}{00AACC}
\definecolor{chapterbg}{HTML}{0A0A16}

\pagecolor{bg}
\color{bodytext}

\setmonofont{Menlo}[Scale=0.82]
\setmainfont{Helvetica Neue}[UprightFont=*,BoldFont=* Bold,ItalicFont=* Italic]

\linespread{1.3}
\setlength{\parskip}{8pt}
\setlength{\parindent}{0pt}
\sloppy

\titleformat{\chapter}[display]
    {\normalfont\Huge\bfseries\color{neoncyan}}
    {}
    {0pt}
    {\begin{tikzpicture}[remember picture, overlay]
        \fill[chapterbg] (current page.north west) rectangle ([yshift=-6cm]current page.north east);
        \draw[neoncyan, line width=1.5pt] ([yshift=-6cm]current page.north west) -- ([yshift=-6cm]current page.north east);
        \draw[neonpink, line width=0.5pt, opacity=0.4] ([yshift=-5.9cm]current page.north west) -- ([yshift=-5.9cm]current page.north east);
    \end{tikzpicture}\vspace{-20pt}}
    [\vspace{8pt}{\color{dimtext}\small\itshape // ZPWR ENCYCLOPEDIA //}]
\titlespacing*{\chapter}{0pt}{50pt}{40pt}

\titleformat{\section}
    {\normalfont\Large\bfseries\color{neonpink}}
    {}
    {0pt}
    {}
    [\vspace{2pt}{\color{ruleglow}\rule{\textwidth}{0.3pt}}]
\titlespacing*{\section}{0pt}{24pt}{12pt}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE]{\color{dimtext}\small\textsc{\leftmark}}
\fancyhead[RO]{\color{dimtext}\small\textit{\rightmark}}
\fancyfoot[C]{{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}\quad{\color{dimtext}\small\thepage}\quad{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}}
\renewcommand{\headrule}{{\color{ruleglow}\hrule height 0.3pt}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}\quad{\color{dimtext}\small\thepage}\quad{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}}
    \renewcommand{\headrule}{}
}

\newtcolorbox{codebox}{
    colback=codebg,colframe=ruleglow,boxrule=0.3pt,arc=2pt,
    left=8pt,right=8pt,top=4pt,bottom=4pt,
    fontupper=\small\ttfamily\color{neongreen},breakable
}

\hypersetup{colorlinks=true,linkcolor=neoncyan,urlcolor=neongreen,
    pdftitle={The ZPWR Encyclopedia},pdfauthor={MenkeTechnologies}}

\begin{document}

\begin{titlepage}
\begin{tikzpicture}[remember picture, overlay]
    \fill[neoncyan, opacity=0.08] (current page.north west) rectangle ([yshift=-4cm]current page.north east);
    \fill[neonpink, opacity=0.06] ([yshift=-4cm]current page.north west) rectangle ([yshift=-8cm]current page.north east);
    \draw[neoncyan, line width=2pt] ([yshift=-3cm, xshift=2cm]current page.north west) -- ([yshift=-3cm, xshift=-2cm]current page.north east);
    \draw[neonpink, line width=1pt, opacity=0.6] ([yshift=-3.1cm, xshift=2cm]current page.north west) -- ([yshift=-3.1cm, xshift=-2cm]current page.north east);
    \draw[neoncyan, line width=2pt] ([yshift=3cm, xshift=2cm]current page.south west) -- ([yshift=3cm, xshift=-2cm]current page.south east);
    \draw[neonpink, line width=1pt, opacity=0.6] ([yshift=2.9cm, xshift=2cm]current page.south west) -- ([yshift=2.9cm, xshift=-2cm]current page.south east);
\end{tikzpicture}
\vspace*{5cm}
\begin{center}
{\fontsize{42}{50}\selectfont\bfseries\color{neoncyan} THE ZPWR}\\[0.5cm]
{\fontsize{42}{50}\selectfont\bfseries\color{neonpink} ENCYCLOPEDIA}\\[2cm]
{\Large\color{bodytext} A Hacker's Field Guide to the Terminal}\\[2cm]
''' + r'''{\large\color{neongreen} ''' + str(len(pages)) + r''' Pages\quad\color{dimtext}//\quad\color{neonyellow}43 Chapters\quad\color{dimtext}//\quad\color{neonorange}410+ Verbs}\\[2cm]
''' + r'''{\color{bodytext}\large MenkeTechnologies}\\[0.3cm]
{\color{dimtext}\small \url{https://github.com/MenkeTechnologies/zpwr}}\\[3cm]
{\color{dimtext}\small CYBERPUNK EDITION\quad//\quad Generated from \texttt{zpwr wizard}}
\end{center}
\end{titlepage}

{\hypersetup{linkcolor=neoncyan}\tableofcontents}

'''

with open(outfile, 'w') as f:
    f.write(PREAMBLE)
    current_chapter = ""
    cmd_buffer = []

    def flush_cmds():
        if cmd_buffer:
            f.write('\\begin{codebox}\n')
            for c in cmd_buffer:
                f.write(f'{c}\\\\\n')
            f.write('\\end{codebox}\n\n')
            cmd_buffer.clear()

    for filepath in pages:
        title, chapter, prints = extract_page(filepath)
        if not title: continue
        if chapter and chapter != current_chapter:
            flush_cmds()
            current_chapter = chapter
            ch_display = re.sub(r'^CHAPTER \d+:\s*', '', escape_latex(strip_colors(chapter)))
            f.write(f'\n\\chapter{{{ch_display}}}\n\n')
        flush_cmds()
        f.write(f'\\section{{{escape_latex(strip_colors(title))}}}\n\n')
        for line in prints:
            result = convert_line(line)
            if result is None:
                flush_cmds()
                continue
            rtype, content = result
            if rtype == 'heading':
                flush_cmds()
                f.write(f'\n\\vspace{{10pt}}\n{{\\large\\bfseries\\color{{neoncyan}} {content}}}\\vspace{{6pt}}\n\n')
            elif rtype == 'section_title':
                flush_cmds()
                f.write(f'\n\\vspace{{12pt}}\n{{\\bfseries\\color{{neonyellow}} {content}}}\\vspace{{4pt}}\n\n')
            elif rtype == 'command':
                cmd_buffer.append(content)
            elif rtype == 'comment':
                flush_cmds()
                f.write(f'{{\\small\\itshape\\color{{dimtext}} {content}}}\n\n')
            else:
                flush_cmds()
                f.write(f'{content}\n\n')
        flush_cmds()
        f.write('\n\\vspace{16pt}\n\n')
    f.write('\\end{document}\n')

print(f"Generated {outfile} from {len(pages)} pages")
