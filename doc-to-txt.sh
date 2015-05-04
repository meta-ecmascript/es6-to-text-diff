#!/bin/bash

type pandoc >/dev/null 2>&1 || { echo >&2 "I require pandoc but it's not installed.  Aborting."; exit 1; }
mkdir -p txts
for file in docx/*.docx ; do
  outputFile=$(basename "${file}" .doc)
  echo "${file} => txts/${outputFile}.txt"
  pandoc -f docx "${file}" -t native | pandoc -f native -t plain -o "txts/${outputFile}.txt"
done
