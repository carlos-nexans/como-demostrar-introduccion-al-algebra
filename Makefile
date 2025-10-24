# Makefile to build HTML and PDF from docs/**/*.md using Pandoc

ROOT := $(CURDIR)
DOCS_DIR := $(ROOT)/docs
HTML_DIR := $(ROOT)/release/html
PDF_DIR := $(ROOT)/release/pdf

# Discover all Markdown files recursively
MD_FILES := $(shell find $(DOCS_DIR) -type f -name '*.md')
# Map docs paths to output paths, preserving subdirectories
HTML_FILES := $(patsubst $(DOCS_DIR)/%.md,$(HTML_DIR)/%.html,$(MD_FILES))
PDF_FILES := $(patsubst $(DOCS_DIR)/%.md,$(PDF_DIR)/%.pdf,$(MD_FILES))
ORDERED_MD_FILES := $(shell find $(DOCS_DIR) -type f -name '*.md' | sort)
BOOK_PDF := $(PDF_DIR)/Libro.pdf

PANDOC := pandoc
# Common flags: smart punctuation, standalone doc, numbered sections
PANDOC_COMMON_FLAGS := --standalone -f markdown+smart --number-sections
PANDOC_HTML_FLAGS := $(PANDOC_COMMON_FLAGS) --toc -t html5 --toc-depth=2 -V toc-title=Contenido
# PDF: clickable links (internal+urls). TOC injected via include to make it its own section/page
PANDOC_PDF_FLAGS := $(PANDOC_COMMON_FLAGS) --pdf-engine=xelatex --toc-depth=2 -V colorlinks=true -V urlcolor=cyan -V linkcolor=cyan --resource-path=.:./assets --syntax-highlighting=idiomatic
TOC_TEX := $(ROOT)/pandoc/toc.tex
HEADER_TEX := $(ROOT)/pandoc/header.tex

.PHONY: all html pdf book clean

all: html pdf book

html: $(HTML_FILES)

pdf: $(PDF_FILES)

book: $(BOOK_PDF)

# Build HTML, ensuring destination directories exist
$(HTML_DIR)/%.html: $(DOCS_DIR)/%.md
	@mkdir -p $(dir $@)
	$(PANDOC) $(PANDOC_HTML_FLAGS) "$<" -o "$@"

# Build PDF, ensuring destination directories exist

$(PDF_DIR)/%.pdf: $(DOCS_DIR)/%.md $(HEADER_TEX)
	@mkdir -p $(dir $@)
	$(PANDOC) $(PANDOC_PDF_FLAGS) --include-in-header=$(HEADER_TEX) "$<" -o "$@"

clean:
	rm -rf $(HTML_DIR) $(PDF_DIR)

$(BOOK_PDF): $(ORDERED_MD_FILES) $(HEADER_TEX)
	@mkdir -p $(dir $@)
	$(PANDOC) $(PANDOC_PDF_FLAGS) --include-in-header=$(HEADER_TEX) $(ORDERED_MD_FILES) -o "$@"
