#!/bin/sh

# tool=dot
tool=neato

cd TP_Graphviz

mkdir -p images_générées

for a in *.dot; do
  a2="${a%.*}"
  $tool -Tsvg "$a" > "images_générées/$a2.svg"
done