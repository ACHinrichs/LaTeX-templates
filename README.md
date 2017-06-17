# LaTeX-Templates

In this repository I collect LaTeX templates, styles and classes I develop
or use frequently. If I am not the author, this will be noted.
## Installation
### Classes and Styles
#### Release
Located on branch `master` just copy the `.sty` or `.cls` file into a
directory LaTeX searches (eg `~/texmf/latex/` for TeXLive under
Ubuntu).
If you are using TeXLive (under Ubuntu) you may simply clone this repo to that
directory, using MikTex makes things more complicated.
#### Development versions
Run LaTeX (not pdflatex) on the `.ins`-File. This will generate a new
`.sty` or `.cls` file. Then just proceed as above.
#### Generate Documentation
If the documentation in this repository does not correspond to the latest
version of the corresponding package or class, just run pdfLaTeX on the `.dtx`file, which will generate a ready-to-use `.cls` file.
## HomeworkAssignment
This class provides a relatively simple document–type for homework, mainly created
for assignments at the University during my studies in Computer Science.
