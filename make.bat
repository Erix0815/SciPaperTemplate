@echo off
cd .\latex\
set PLANTUML_JAR=..\plantuml.jar
set SAVEFILE=

set           d=############
echo %d% & echo # "LaTeX"  # & echo %d% & lualatex -interaction=nonstopmode -shell-escape main.tex
echo %d% & echo # "BibTeX" # & echo %d% & bibtex main
echo %d% & echo # "LaTeX"  # & echo %d% & lualatex -interaction=nonstopmode -shell-escape main.tex
echo %d% & echo # "LaTeX"  # & echo %d% & lualatex -interaction=nonstopmode -shell-escape main.tex
echo %d% & echo #  "save"  # & echo %d% & copy main.pdf ..\%SAVEFILE%
echo %d% & echo # "clean"  # & echo %d% & git clean -fXde !%SAVEFILE%
echo %d% & echo #  "done"  # & echo %d%

cd ..
