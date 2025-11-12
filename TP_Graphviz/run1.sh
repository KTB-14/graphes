#!/bin/sh

# tool=dot
tool=neato

cd TP_Graphviz

mkdir -p générées
mkdir -p générées/images_run1

$tool -Tpng $1.dot >générées/images_run1/$1.png
$tool -Tsvg $1.dot >générées/images_run1/$1.svg