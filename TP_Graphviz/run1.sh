#!/bin/sh

# tool=dot
tool=neato

cd TP_Graphviz

mkdir -p images_générées
mkdir -p images_générées/images_run1

$tool -Tpng $1.dot >images_générées/images_run1/$1.png
$tool -Tsvg $1.dot >images_générées/images_run1/$1.svg