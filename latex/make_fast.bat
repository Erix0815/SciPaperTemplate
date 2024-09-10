@echo off
set PLANTUML_JAR=..\plantuml.jar
bibtex -terse main
lualatex -interaction=batchmode -shell-escape main.tex
