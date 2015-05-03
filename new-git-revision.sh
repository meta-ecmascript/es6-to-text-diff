#!/bin/bash

declare txtFiles=$(ls txts | sort --field-separator=v -k 1,1n -k 2,2n -k 3,3n -k 4,4n)
declare outputDir="es6-draft-revision"
rm -rf ${outputDir}
mkdir -p ${outputDir}
git --separate-git-dir init ${outputDir}
for file in ${txtFiles} ; do
  cp "${file}" "${outputDir}/es6-draft.txt"
  git --git-dir "${outputDir}/.git" add "${outputDir}/es6-draft.txt"
  commitMessage=$(basename "${file}" .doc.docx.txt)
  git --git-dir "${outputDir}/.git" commit -m "${commitMessage}"
done
