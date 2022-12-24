# LaTeX-Thesis-Template-

LaTeX Generic Thesis Template Motilal Nehru National Institute of Technology Allahabad

can be modified as needed



How to compile will all components

create a bash script like below

### On linux

```bash
#!/bin/bash
pdflatex $1 $2 $3
#bibtex $2
biber $2
#makeindex -s $2
makeindex $2
makeglossaries $2
pdflatex $1 $2 $3
pdflatex $1 $2 $3

#!/bin/bash
## Clean Auxilary files from Latex Folder
#filetypes=(aux out log lof lot toc ind ilg idx glo bcf maf ist glsdefs mtc0 mtc gls glg 2i 2o blg run.xml bbl blg #bcf mtc* mlf* mlt* ptc* plf* plt*)
#for i in ${filetypes[@]}
#do
#	rm ./*.$i
#done




```

### On windows

```bat

pdflatex %1 %2 %3
# bibtex %2
biber %2
makeindex %2
makeglossaries %2
pdflatex %1 %2 %3
pdflatex %1 %2 %3

```



# All compiler in texworks

save Above script as executible

> In texwork> file> preference > Typesetting >Processing tools


![](./How%20to%20Configure%20Texworks%20option%20PdfLaTeX%2BMakeIndex%2BBibTex%20compile/step1.png)


add new

Name it anything ie AIO

in the program browse above script

Add three arguments

$fullname

$basename

$synctexoption
![](./How%20to%20Configure%20Texworks%20option%20PdfLaTeX%2BMakeIndex%2BBibTex%20compile/step2.png)