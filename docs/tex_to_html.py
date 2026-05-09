#!/usr/bin/env python3
"""Convert zpwr-encyclopedia.tex into HTML body fragments for docs/index.html."""
import re
import sys
from html import escape as h

SRC = "/Users/wizard/.zpwr/docs/zpwr-encyclopedia.tex"


def strip_preamble(text: str) -> str:
    m = re.search(r'^\\chapter\{', text, re.M)
    return text[m.start():] if m else text


def strip_doc_end(text: str) -> str:
    return re.sub(r'\\end\{document\}.*$', '', text, flags=re.S)


def split_sections(text: str):
    """Yield (kind, payload) tuples in document order.

    kind ∈ {'chapter', 'section', 'codebox', 'h4', 'h5', 'figure', 'text'}.
    """
    pos = 0
    n = len(text)
    chapter_pat = re.compile(r'\\chapter\{([^}]*)\}')
    section_pat = re.compile(r'\\section\{([^}]*)\}')
    codebox_pat = re.compile(r'\\begin\{codebox\}(.*?)\\end\{codebox\}', re.S)
    glowbox_pat = re.compile(r'\\begin\{glowbox\}(.*?)\\end\{glowbox\}', re.S)
    # h4/h5 may contain one level of nested {...} (e.g. \textbf{X}); require the
    # content to live on a single line so we don't swallow whole paragraphs.
    h4_pat = re.compile(r'\{\\large\\bfseries\\color\{neoncyan\}\s*((?:[^{}\n]|\{[^{}\n]*\})*?)\}')
    h5_pat = re.compile(r'\{\\bfseries\\color\{neonyellow\}\s*((?:[^{}\n]|\{[^{}\n]*\})*?)\}')
    figure_pat = re.compile(r'\\includegraphics\[[^\]]*\]\{([^}]+)\}')
    chaptermark_pat = re.compile(r'\\chaptermark\{[^}]*\}')

    patterns = [
        ('chapter', chapter_pat),
        ('section', section_pat),
        ('codebox', codebox_pat),
        ('glowbox', glowbox_pat),
        ('h4', h4_pat),
        ('h5', h5_pat),
        ('figure', figure_pat),
        ('chaptermark', chaptermark_pat),
    ]

    while pos < n:
        best = None
        for kind, pat in patterns:
            m = pat.search(text, pos)
            if m and (best is None or m.start() < best[1].start()):
                best = (kind, m)
        if best is None:
            tail = text[pos:].strip()
            if tail:
                yield ('text', tail)
            return
        kind, m = best
        pre = text[pos:m.start()].strip()
        if pre:
            yield ('text', pre)
        if kind == 'chaptermark':
            pos = m.end()
            continue
        if kind in ('chapter', 'section', 'figure'):
            yield (kind, m.group(1))
        else:
            yield (kind, m.group(1))
        pos = m.end()


def _decode_arg(arg: str) -> str:
    """Decode TeX escapes inside an inline arg (e.g. \\_ inside \\textbf{...})."""
    arg = arg.replace('\\$', '$')
    arg = arg.replace('\\#', '#')
    arg = arg.replace('\\&', '&')
    arg = arg.replace('\\_', '_')
    arg = arg.replace('\\%', '%')
    arg = arg.replace('\\{', '{').replace('\\}', '}')
    arg = arg.replace('\\textbackslash', '\\')
    arg = arg.replace('\\textasciitilde', '~')
    arg = arg.replace('\\textasciicircum', '^')
    return arg


def clean_inline(s: str) -> str:
    """Convert TeX inline content into HTML fragment text. Output is HTML-safe."""
    placeholders = []

    def stash(html_str):
        placeholders.append(html_str)
        return f"\x00{len(placeholders) - 1}\x00"

    s = re.sub(r'\\textbf\{([^{}]*)\}', lambda m: stash(f"<strong>{h(_decode_arg(m.group(1)))}</strong>"), s)
    s = re.sub(r'\\textit\{([^{}]*)\}', lambda m: stash(f"<em>{h(_decode_arg(m.group(1)))}</em>"), s)
    s = re.sub(r'\\texttt\{([^{}]*)\}', lambda m: stash(f"<code>{h(_decode_arg(m.group(1)))}</code>"), s)
    s = re.sub(r'\\textsc\{([^{}]*)\}', lambda m: stash(f"<span class=\"sc\">{h(_decode_arg(m.group(1)))}</span>"), s)
    s = re.sub(
        r'\\href\{([^}]+)\}\{([^}]+)\}',
        lambda m: stash(f"<a href=\"{h(m.group(1))}\" target=\"_blank\" rel=\"noopener noreferrer\">{h(m.group(2))}</a>"),
        s,
    )
    s = re.sub(
        r'\\url\{([^}]+)\}',
        lambda m: stash(f"<a href=\"{h(m.group(1))}\" target=\"_blank\" rel=\"noopener noreferrer\">{h(m.group(1))}</a>"),
        s,
    )

    # Drop spacing / formatting commands that have no HTML equivalent.
    drop_no_arg = [
        r'\\vspace\{[^}]*\}',
        r'\\hspace\{[^}]*\}',
        r'\\bigskip', r'\\medskip', r'\\smallskip',
        r'\\noindent', r'\\par\b', r'\\sloppy',
        r'\\linespread\{[^}]*\}',
        r'\\setlength\{[^}]*\}\{[^}]*\}',
        r'\\centerline\{', r'\\center', r'\\raggedright',
        r'\\itshape', r'\\bfseries', r'\\selectfont',
        r'\\fontsize\{[^}]*\}\{[^}]*\}',
        r'\\quad', r'\\qquad',
        r'\\small\b', r'\\Large\b', r'\\large\b', r'\\huge\b', r'\\Huge\b', r'\\normalsize\b', r'\\normalfont\b',
        r'\\thispagestyle\{[^}]*\}',
        r'\\pagestyle\{[^}]*\}',
        r'\\clearpage', r'\\newpage', r'\\cleardoublepage',
    ]
    for pat in drop_no_arg:
        s = re.sub(pat, '', s)

    # {\color{x}TEXT} -> TEXT  (drop coloring; class hooks happen at higher level)
    s = re.sub(r'\{\\color\{[^}]*\}\s*', '{', s)
    s = re.sub(r'\\color\{[^}]*\}\s*', '', s)

    # Common TeX escapes for printable chars
    char_escapes = [
        (r'\\textbackslash\{\}\\textbackslash\{\}', '\\\\'),
        (r'\\textbackslash\{\}', '\\\\'),
        (r'\\textbackslash', '\\\\'),
        (r'\\textasciitilde\{\}', '~'),
        (r'\\textasciitilde', '~'),
        (r'\\textasciicircum\{\}', '^'),
        (r'\\textasciicircum', '^'),
        (r'\{\\char`\\#\}', '#'),
        (r'\{\\char`\\\$\}', '$'),
        (r'\\\$', '$'),
        (r'\\#', '#'),
        (r'\\&', '&'),
        (r'\\_', '_'),
        (r'\\%', '%'),
        (r'\\\{', '{'),
        (r'\\\}', '}'),
        (r"\\'", "'"),
        (r'\\"', '"'),
        (r'~', ' '),  # nonbreaking space
        (r'---', '—'),
        (r'--', '–'),
    ]
    for pat, rep in char_escapes:
        s = re.sub(pat, rep, s)

    # TeX line break '\\' -> newline so render_text_block can preserve it.
    # The input file contains two literal backslash characters; consume any
    # immediately-following newline so we don't end up with a blank-line split
    # (which would put every key on its own paragraph).
    s = re.sub(r'\\\\[ \t]*\n?', '\n', s)

    # Strip remaining \cmd or \cmd[opts]{args}
    s = re.sub(r'\\[a-zA-Z]+\*?(?:\[[^\]]*\])?\{[^{}]*\}', '', s)
    s = re.sub(r'\\[a-zA-Z]+\*?\b', '', s)

    # Drop residual braces
    s = re.sub(r'[{}]', '', s)

    # Normalize tabs to spaces but preserve internal multi-space alignment so
    # keybinding tables render with their original column structure.
    s = s.replace('\t', ' ')
    s = re.sub(r' +\n', '\n', s)
    s = s.strip()

    # HTML-escape, then restore stashed bits
    s = h(s)
    for i, frag in enumerate(placeholders):
        s = s.replace(f"\x00{i}\x00", frag)
    return s


def render_codebox(body: str) -> str:
    """Codebox: monospace block. Each '\\\\' is a line break; preserve indentation."""
    body = re.sub(r'\\color\{[^}]*\}\s*', '', body)
    body = re.sub(r'\{\\char`\\#\}', '#', body)
    body = re.sub(r'\{\\char`\\\$\}', '$', body)
    body = body.replace('\\$', '$')
    body = body.replace('\\#', '#')
    body = body.replace('\\&', '&')
    body = body.replace('\\_', '_')
    body = body.replace('\\%', '%')
    body = body.replace('\\{', '{').replace('\\}', '}')
    body = body.replace('\\textbackslash', '\\')
    body = body.replace('\\textasciitilde', '~')
    body = re.sub(r'\\[a-zA-Z]+\b', '', body)
    body = body.replace('{', '').replace('}', '')
    # Lines split on '\\\\'
    lines = re.split(r'\\\\', body)
    cleaned = [ln.strip('\n').rstrip() for ln in lines if ln.strip()]
    return '<pre class="enc-code">' + h('\n'.join(cleaned)) + '</pre>'


def render_text_block(text: str) -> str:
    """Render free text as one or more <p> / <pre> elements.

    A paragraph is split on blank lines. Within a paragraph, a single
    line of text is rendered as a <p>. Multi-line paragraphs (typically
    keybinding tables that used '\\\\' line breaks in the TeX source) are
    rendered as <pre class="enc-keys"> so column alignment is preserved.
    """
    cleaned = clean_inline(text)
    if not cleaned:
        return ''
    blocks = []
    for raw in re.split(r'\n{2,}', cleaned):
        chunk = raw.strip('\n')
        if not chunk.strip():
            continue
        lines = [ln.rstrip() for ln in chunk.split('\n')]
        # Drop leading/trailing blank lines but keep interior structure
        while lines and not lines[0].strip():
            lines.pop(0)
        while lines and not lines[-1].strip():
            lines.pop()
        if not lines:
            continue
        if len(lines) == 1:
            blocks.append(f'<p>{lines[0]}</p>')
        else:
            blocks.append('<pre class="enc-keys">' + '\n'.join(lines) + '</pre>')
    return '\n'.join(blocks)


def figure_path_to_relative(path: str) -> str:
    if path.startswith('/Users/wizard/.zpwr/docs/'):
        return path[len('/Users/wizard/.zpwr/docs/'):]
    return path


def main():
    text = open(SRC).read()
    text = strip_preamble(text)
    text = strip_doc_end(text)

    out = []
    toc = []  # list of (kind, idx, title)
    chapter_idx = 0
    section_idx = 0
    in_chapter = False
    in_section = False

    def close_section():
        nonlocal in_section
        if in_section:
            out.append('</div></section>')
            in_section = False

    def close_chapter():
        nonlocal in_chapter
        close_section()
        if in_chapter:
            out.append('</div>')  # /chapter
            in_chapter = False

    for kind, payload in split_sections(text):
        if kind == 'chapter':
            close_chapter()
            chapter_idx += 1
            title = clean_inline(payload)
            chapter_id = f"ch{chapter_idx}"
            toc.append(('chapter', chapter_idx, title, chapter_id))
            out.append(f'<div class="enc-chapter" id="{chapter_id}">')
            out.append(f'<h2 class="enc-chapter-title"><span class="enc-chapter-num">CH {chapter_idx:02d}</span>{title}</h2>')
            in_chapter = True
        elif kind == 'section':
            close_section()
            if not in_chapter:
                out.append('<div class="enc-chapter">')
                in_chapter = True
            section_idx += 1
            title = clean_inline(payload)
            sec_id = f"s{section_idx}"
            toc.append(('section', section_idx, title, sec_id))
            out.append(f'<section class="enc-section" id="{sec_id}">')
            out.append(f'<h3 class="enc-section-title"><span class="enc-section-num">§{section_idx}</span>{title}</h3>')
            out.append('<div class="enc-section-body">')
            in_section = True
        elif kind == 'h4':
            out.append(f'<h4 class="enc-h4">{clean_inline(payload)}</h4>')
        elif kind == 'h5':
            out.append(f'<h5 class="enc-h5">{clean_inline(payload)}</h5>')
        elif kind == 'codebox':
            out.append(render_codebox(payload))
        elif kind == 'glowbox':
            inner = clean_inline(payload)
            out.append(f'<aside class="enc-callout">{inner}</aside>')
        elif kind == 'figure':
            rel = figure_path_to_relative(payload)
            out.append(f'<figure class="enc-figure"><img src="{h(rel)}" alt=""></figure>')
        elif kind == 'text':
            block = render_text_block(payload)
            if block:
                out.append(block)

    close_chapter()

    body_path = sys.argv[1] if len(sys.argv) > 1 else None
    toc_path = sys.argv[2] if len(sys.argv) > 2 else None
    body_html = '\n'.join(out)
    toc_html_parts = ['<nav class="enc-toc-nav" aria-label="Encyclopedia table of contents">']
    toc_html_parts.append('<ol class="enc-toc-list">')
    for entry in toc:
        kind, idx, title, eid = entry
        if kind == 'chapter':
            toc_html_parts.append(f'<li class="enc-toc-chapter"><a href="#{eid}"><span class="enc-toc-num">CH {idx:02d}</span> {title}</a></li>')
        else:
            toc_html_parts.append(f'<li class="enc-toc-section"><a href="#{eid}"><span class="enc-toc-num">§{idx}</span> {title}</a></li>')
    toc_html_parts.append('</ol></nav>')
    toc_html = '\n'.join(toc_html_parts)

    if body_path:
        with open(body_path, 'w') as f:
            f.write(body_html)
    else:
        print(body_html)
    if toc_path:
        with open(toc_path, 'w') as f:
            f.write(toc_html)
    sys.stderr.write(f"chapters={chapter_idx} sections={section_idx}\n")


if __name__ == '__main__':
    main()
