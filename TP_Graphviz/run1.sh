#!/bin/sh

# tool=dot
tool=neato
$tool -Tpng TP_Graphviz/$1.dot >$1.png
$tool -Tsvg TP_Graphviz/$1.dot >$1.svg