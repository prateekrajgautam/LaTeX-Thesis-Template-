#!/bin/bash

## Script 1 for pandoc DOCX and MD conversion
pandoc $1 -c --bibliography=$2 -o $2.docx
pandoc $1 -c --bibliography=$2 -o $2.md


##Script 2 AIO with BibTeX
pdflatex $1 $2 $3
bibtex $2
#biber $2
makeindex $2
makeglossaries $2
pdflatex $1 $2 $3
pdflatex $1 $2 $3


##Script 3 AIO with Biber
pdflatex $1 $2 $3
#bibtex $2
biber $2
makeindex $2
makeglossaries $2
pdflatex $1 $2 $3
pdflatex $1 $2 $3


## Texworks Instructions
## save Above script as executible

## In texwork> file> preference > Typesetting >Processing tools
## add new
## Name it anything ie AIO
## in the program browse above script
## add three arguments
##	$fullname
##	$basename
##	$synctexoption




#echo help
#echo $0 #location of compiling sh script
#echo $1 #NAME of Main Tex File
#echo $2 # NAME of Main Tex File without .tex
#echo $3 #-synchtex=1


