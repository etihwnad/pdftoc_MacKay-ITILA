# PDF bookmarks for Information Theory, Inference, and Learning Algorithms by David J.C. MacKay

MacKay makes the PDF version of this book available via his website at
http://www.inference.org.uk/mackay/itila/book.html

Unfortunately, that version does not include bookmarks which make navigating to
various sections convenient.
This repository contains a tool for converting a specially-formatted
[VimOutliner-style](https://github.com/vimoutliner/vimoutliner) file `toc.votl`
into an input file suitable for input to [PDFtk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) for adding such a set of hierarchical bookmarks.

The bookmark input file `toc.votl` is formatted as:

    {tab-indented level}(pdfpagenumber) The bookmark text

The `totoc.py` script and Makefile handle the work of fetching the source PDF,
converting to the correct bookmark file, and merging the information.

## Requirements

* PDFtk available as `pdftk`
* Python 3 available as `python3`
