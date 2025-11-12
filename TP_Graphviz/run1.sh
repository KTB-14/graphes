#!/bin/sh

# tool=dot
tool=neato
$tool -Tpng TP_Graphviz/$1.dot >TP_Graphviz/images_générées/$1.png
$tool -Tsvg TP_Graphviz/$1.dot >TP_Graphviz/images_générées/$1.svg