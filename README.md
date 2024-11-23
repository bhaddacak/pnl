# Pāli for New Learners
“A reader-friendly, yet comprehensive, Pāli primer”

## How to build the book

All you need is TeX Live and the skill of using it. To install the program, consult the [quick installation guide](https://tug.org/texlive/quickinstall.html). The full installation is huge (7GB+). To minimize it, documentation and source files can be excluded, as well as languages other than English. Many packages are not really used such as additional fonts, but it is too nitpicky to microselect them. If space is not a problem, it is better to install most of them.

Typesetting in LaTeX is definitely difficult, even by competent programmers. You have to learn new language syntax and several conventions. I suppose that you have already passed this requirement.

To build the whole book, follow these steps:
1. Comment out `includeonly` in `preamble.tex` (see toward the end), if it has not yet been done.
2. Open a terminal console at the book's folder and type these (normally you need to process more than once, and sometimes twice is not enough):
    ```
    $ lualatex pnl
    $ biber pnl
    $ lualatex pnl
    $ lualatex pnl
    ```
3. If `pnl.pdf` is produced, the build is successful. Otherwise, you have to fix errors, possibly by installing missing packages in case you have an insufficient installation. If any syntax errors occur, you have to fix those too.
4. If only some chapters are needed, edit and uncomment `includeonly` in `preamble.tex`, and rebuild it again. You can see the sequence of files in `pnl-base.tex`.

## Conventions on Pāli

Here is a hard part, and I want you all to share this hardship. Historically speaking, the first version of the book was produced with a very old computer (from 2005 or so). To speed-up the build, the main engine used at the time was `pdflatex` (only `lualatex` was used in the final production). This makes the input of Pāli characters as you see in the source files. Now it could be better if we use `fontspec` and `babel` with a today computer, then change the characters to Unicode. That causes a lot of editing, and I think I will never change it myself.

Here are Pāli characters with diacritics used in the source files. (The uppercase set is treated likewise.)

| Letter | In text body | In tables (rare) |
| --- | --- | --- |
| ā | \\=a | \\a{=}a |
| ī | \\=i | \\a{=}i |
| ū | \\=u | \\a{=}u |
| ṅ | \\.n | \\a{.}n |
| ñ | \\~n | \\a{~}n |
| ṭ | \\d t | \\a{d}t |
| ḍ | \\d d | \\a{d}d |
| ṇ | \\d n | \\a{d}n |
| ḷ | \\d l | \\a{d}l |
| ṃ | \\d m | \\a{d}m |

## Notes on licensing

Form version 3.0 onward, the *GNU Free Documentation License* is applied to the work. This means the LaTeX source files will be always publicly available and amendable. Now the work belongs to the public. To help editing the book in the main branch, please use the *pull request* mechanism.

Apart from the strict license used, I also allow derivative works, possibly translations and partial compositions, to be relicensed to *Creative Commons Attribution-ShareAlike 4.0 International License* (CC-BY-SA) provided that the LaTeX source files are not used.
