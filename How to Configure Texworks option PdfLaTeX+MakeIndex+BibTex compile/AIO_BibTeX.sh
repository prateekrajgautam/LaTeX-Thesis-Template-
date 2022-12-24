#!/bin/bash
pdflatex $1 $2 $3
bibtex $2
#biber $2
makeindex $2
makeglossaries $2
pdflatex $1 $2 $3
pdflatex $1 $2 $3


## save Above script as executible


## In texwork> file> preference > Typesetting >Processing tools
# add new
# Name it anything ie AIO
# in the program browse above script
# add three arguments
#	$fullname
#	$basename
#	$synctexoption




## Script for pandoc DOCX and MD conversion
#pandoc $1 -c --bibliography=$2 -o $2.docx
#pandoc $1 -c --bibliography=$2 -o $2.md



#echo help
#echo $0 #location of compiling sh script
#echo $1 #NAME of Main Tex File
#echo $2 # NAME of Main Tex File without .tex
#echo $3 #-synchtex=1

## Clean Auxilary files from Latex Folder
#filetypes=(aux out log lof lot toc ind ilg idx glo bcf maf ist glsdefs mtc0 mtc gls glg 2i 2o blg run.xml bbl mtc* mlf* mlt* ptc* plf* plt*)
#for i in ${filetypes[@]}
#do
#	rm ./*.$i
#done
