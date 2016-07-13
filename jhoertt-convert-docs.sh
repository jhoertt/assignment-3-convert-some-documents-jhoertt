#!/bin/bash


# Declare input argument as a variable
echo "Please enter the name of the markdown file you wish to convert"

read file

# Convert markdown to HTML
pandoc -o $file.html $file.md
# Convert markdown to DOCX
pandoc -o $file.docx $file.md
# Convert markdown to ODT
pandoc -o $file.odt $file.md

# Convert markdown to PDF
pandoc -o $file.pdf $file.md


# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $file to HTML, DOCX, ODT, PDF"