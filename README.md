# LaTeX-Templates

In this repository I collect LaTeX templates, styles and classes I develop
or use frequently. If I am not the author, this will be noted.
## Installation
### Classes and Styles
#### Release
##### From source
If the class is not uploaded to CTAN (I am planning to upload all, but
Iam lazy), clone the repository into a directory searched by
LaTeX. (Using TexLive under Linux this directory could be
`~/texmf/tex/latex`, using MikTech under Windows, this is
configurable) and index them (TexLive+Linux `$ texhash`,
MikTech+Windows Refresh teh osurces via the MikTech-Settings as
Admin).

##### From CTAN
If I uploaded the class to CTAN, install them like any other class or package.
#### Development versions
I am not always updating the .cls-files when developing new features,
so when you want to use developtment-versions (why would you want to do
that?) Proceed as above when installing from source, but after you
checked out th branch `dev` for the class you want to use, run LaTeX (not
pdflatex) on the `.ins`-File. This will generate a new `.sty` or
`.cls` file. Then just proceed as above.
#### Generate Documentation
If the documentation in this repository does not correspond to the latest
version of the corresponding package or class, just run (pdf)LaTeX on
the `.dtx`file.
## homeworkassignment
This class provides a relatively simple document–type for homework, mainly created
for assignments at the University during my studies in Computer
Science. 

It features an easy to use sectioning, frequently used packages and
configurations and macros fo mathematical functions and operators,
which I need often.
## cheatsheet
I found out, that the sourcecode of Cheat-Sheets in LaTeX is always a
hughe pile of badly documented code, which is basically identical for
all CheatSheets, so I bundeled it in a class. Just load
`\documentclass{cheatsheet}` and you are ready to go.

Available on CTAN
