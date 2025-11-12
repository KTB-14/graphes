#!/bin/sh

# tool=dot
tool=neato

cd TP_Graphviz

mkdir -p images_générées
mkdir -p images_générées/images_run2

for a in *.dot; do
  a2="${a%.*}"
  $tool -Tsvg "$a" > "images_générées/images_run2/$a2.svg"
done