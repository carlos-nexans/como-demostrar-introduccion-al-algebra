# Pandoc Book Template

A modern book template using Pandoc + LaTeX that supports code highlighting, images, and beautiful PDF output.

## Features

- 🎨 Beautiful PDF output with proper page numbering
- 📑 Automatic table of contents
- 💻 Code syntax highlighting (using minted)
- 📊 Image support with captions
- 🔗 Clickable links in cyan
- 📏 Customized margins and line spacing
- 📖 Clean page breaks and section organization

## Prerequisites

1. Install Pandoc:
   ```bash
   # macOS
   brew install pandoc

   # Ubuntu/Debian
   sudo apt-get install pandoc
   ```

2. Install LaTeX (needed for PDF generation):
   ```bash
   # macOS
   brew install --cask mactex

   # Ubuntu/Debian
   sudo apt-get install texlive-xetex
   ```

3. Install Pygments (for code highlighting):
   ```bash
   pip install Pygments
   ```

## Project Structure

```
.
├── docs/                  # Your markdown content
│   ├── 00_Front.md       # Front matter/cover
│   ├── 01_Chapter1.md    # Chapters
│   └── ...
├── assets/               # Images and resources
├── pandoc/               # LaTeX configuration
│   ├── header.tex        # LaTeX style and packages
│   └── toc.tex          # Table of contents setup
├── Makefile             # Build automation
└── release/             # Generated output
    ├── html/            # HTML version
    └── pdf/             # PDF version
```

## Writing Content

### Basic Markdown

Use standard markdown for basic content:

```markdown
# Chapter Title

## Section

Regular paragraph text with **bold** and *italic*.

- List item 1
- List item 2
```

### Adding Code Blocks

Two options for code blocks:

1. Simple markdown style:
   ````markdown
   ```python
   def hello():
       print("Hello, World!")
   ```
   ````

2. Enhanced LaTeX style (with line numbers):
   ```latex
   \begin{minted}[linenos]{python}
   def hello():
       print("Hello, World!")
   \end{minted}
   ```

### Adding Images

```markdown
\begin{figure}[htbp]
\centering
\includegraphics[width=0.9\textwidth]{./assets/your_image.png}
\caption{Your Image Caption}
\end{figure}
```

### Page Breaks

Add explicit page breaks with:
```markdown
\pagebreak
```

## Building

### Generate Everything
```bash
make
```

### Generate Only PDFs
```bash
make pdf
```

### Generate Only HTML
```bash
make html
```

### Generate Single Book PDF
```bash
make book
```

### Clean Generated Files
```bash
make clean
```

## Customization

### Margins and Spacing

Edit `pandoc/header.tex`:
```latex
% Adjust margins
\usepackage[margin=2cm]{geometry}

% Change line spacing (1.5 spacing)
\usepackage{setspace}
\onehalfspacing
```

### Code Highlighting

In `pandoc/header.tex`, modify minted settings:
```latex
\setminted{
    frame=single,
    breaklines=true,
    fontsize=\small
}
```

Available styles: friendly, monokai, manni, etc.

### Link Colors

In `Makefile`, adjust PDF flags:
```makefile
PANDOC_PDF_FLAGS := ... -V colorlinks=true -V urlcolor=cyan -V linkcolor=cyan
```

## Tips

1. Keep filenames in `docs/` numbered (e.g., `00_`, `01_`, etc.) for proper ordering
2. Use `\pagebreak` before major sections
3. For code blocks that shouldn't break across pages, wrap them in `\begin{samepage}...\end{samepage}`
4. Place images in `assets/` folder and reference them with `./assets/image.png`

## License

This template is under [Creative Commons CC-BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/).
