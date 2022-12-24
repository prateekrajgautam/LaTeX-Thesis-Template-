set path="C:\texlive\2019\bin\win32"
"%path%\pdflatex.exe" %1 %2 %3
"%path%\bibtex.exe" %4
"%path%\makeindex.exe" %4
"%path%\pdflatex.exe" %1 %2 %3
"%path%\pdflatex.exe" %1 %2 %3

:: INSTALL PANDOC TO CONVERT TO WORD FILE

::pandoc %3 -S -o %3.docx

:: TO UPDATE REFERENCES 

::set referencefilename=filereference.bib
::pandoc %3 --bibliography=%referencefilename% -S -o %3.docx





::PdfLaTeX+MakeIndex+BibTeX
::$synctexoption
::$fullname
::$basename
