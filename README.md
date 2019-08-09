CS.PhD PSU Thesis Template
========================


> A LaTeX PhD thesis template for Computer Science Department, Prince of Songkla University (PSU)

[![Version](http://img.shields.io/badge/version-v.1.0.1-brightgreen.svg)](https://github.com/pwinzip/psu-csphd-thesis)

## Author(s)
*   Naphat Keawpibal


--------------------------------------------------------------------------------

## Features

*   Conforms to the CS.PhD dissertation guidelines and Graduate School  Prince of Songkla University guidelines

*   Supports LaTeX and `pdflatex`

*  Supports `bibtex` bibliography

*   Title page with University crest

*   Print / On-line version: Different hyper-referencing styles

*   Pre-defined font (like Times New Roman) with math support

*   Pre-defined bibliography style support (numbered)

*   Pre-defined paper size and margin size

*   Supports both study plans (plan 1 and plan 2)

*   Pre-defined 5 pages (cover page, approval page, certification page, abstract page, and vitae page)

*   Option to choose page number styles for 5 pages (roman / Roman)

*   Add advisor and/or co-advisor for your PhD thesis

*   Add committee for your PhD thesis defense

*   Add "TABLE OF CONTENTS (continued)" heading in the TOC if it flows onto a second page. It is similar to the LOF, LOT, and LOA.

## File Structures
========================

|File|Description|Thai Description|
|---|---|---|
|\abstract\abstractEN.tex|English abstract|บทคัดย่อภาษาอังกฤษ|
|\abstract\abstractTH.docx|Thai abstract|บทคัดย่อภาษาไทย|
|\acknowledgement\acknowledgement.tex|Acknowledgement|กิตติกรรมประกาศ|
|\main\thesis.tex|Full thesis|วิทยานิพนธ์ฉบับเต็ม|
|\chapterXX\chapterXX.tex|Chapter XX|บทที่ XX|
|\appendix\appendixXX|Appendix XX|ภาคผนวกที่ XX|
|\vitae\vitae.tex|Author profile|ประวัติผู้เขียน|
|\main\references.bib|References|เอกสารอ้างอิง (bibtex)|

## Quick start
1. Clone this repository.
2. Start adding contents of your thesis into `thesis.tex`.
3. Start adding contents of each chapter into `chapterXX.tex`, XX refers to chapter no.
4. Build the `PDF` from file `thesis.tex`
5. Open file `thesis.pdf`

-------------------------------------------------------------------------------

## Usage details

Thesis information such as title, author, year, degree, etc., and other meta-data can be modified in `thesis.tex`

The class file, `csthesis.cls`, is based on the standard `book` class

It supports the following custom option in the documentclass in `thesis.tex`:

(Usage `\documentclass[print]{csthesis}`)

*   `print`: Supports Print and Online version with different hyperlink styles.
    Use `print` in the option to activate Print version with appropriate view styles.
    Leaving the option field blank will activate Online version

There are the additional properties corresponding to Graduate School, PSU guidelines, but you do not need to add these options to the documentclass in `thesis.tex`:

*   `a4paper` (default as per the GS.PSU guidelines): Paper size

*   `12pt` (default): The GS.PSU guidelines recommend using a minimum font size of 12pt. This template also supports `12pt`.

*   `oneside` (default): This is especially useful for printing single side.

*    `margin`: This template also define the page margin according to GS.PSU guidelines by using \RequirePackage[left=1.5in,right=1in,top=1.5in,bottom=1in]{geometry}.


## Additional Commands

*   `\setstretch{1.5}` (default): This template set the line spacing to be 1.5 lines according to GS.PSU guidelines.

*   `\innerPageStyle{Roman}` (default): This template supports two page number styles (Roman and roman) for first 5 pages before starting contents of chapter. Specifying `Roman` will use uppercase Roman numerals. Specifying `roman` will use lowercase Roman numerals.

### Font

`csthesis` currently supports a clone of Times New Roman. This template uses `newtxtext` and `newtxmath` font with Math Support.

### Bibliography style

`csthesis` currently supports `numbered` (default) style

*   This template uses `natbib` package with .bib file to manage bibliography

--------------------------------------------------------------------------------

## Inspirations/Based on

*   PhD Thesis Template from Graduate School, Prince of Songkla University [Thesis Template](https://grad.psu.ac.th/en/current-student/thesis/thesis-template.html)

*   [https://github.com/sdayu/PSU-thesis-latex-template](https://github.com/sdayu/PSU-thesis-latex-template)
