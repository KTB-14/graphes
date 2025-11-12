#!/bin/sh

# tool=dot
tool=neato

cd TP_Graphviz

mkdir -p générées
mkdir -p générées/images_run2

for a in *.dot; do
  a2="${a%.*}"
  $tool -Tsvg "$a" > "générées/images_run2/$a2.svg"
done