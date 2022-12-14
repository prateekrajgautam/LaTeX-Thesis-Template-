#!/bin/bash
pdflatex $1 $2 $3
#bibtex $2
biber $2
makeindex -s $2
makeglossaries $2
pdflatex $1 $2 $3
pdflatex $1 $2 $3

#!/bin/bash
# Clean Auxilary files from Latex Folder
#filetypes=(aux out log lof lot toc ind ilg idx glo bcf maf ist glsdefs mtc0 mtc gls glg 2i 2o blg run.xml bbl blg #bcf mtc* mlf* mlt* ptc* plf* plt*)
#for i in ${filetypes[@]}
#do
#	rm ./*.$i
#done


## save Above script as executible


## In texwork> file> preference > Typesetting >Processing tools
# add new
# Name it anything ie AIO
# in the program browse above script
# add three arguments
#	$fullname
#	$basename
#	$synctexoption

