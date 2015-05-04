#!/bin/bash

declare txtFiles=$(find "$(pwd)/txts" -maxdepth 1 -mindepth 1 | sort --field-separator=v -k 1,1n -k 2,2n -k 3,3n -k 4,4n)
declare outputDir="es6-draft-revision"
rm -rf ${outputDir}
mkdir -p ${outputDir}
cd ${outputDir}
git init
for file in ${txtFiles} ; do
  if [ -s "${file}" ]; then
    cp "${file}" ./es6-draft.txt
    # remove "_" from "_some_"
    sed -i '' -e 's/_\([^ ]*\)_/\1/g' es6-draft.txt
    git add ./es6-draft.txt
    commitMessage=$(basename "${file}" .doc.docx.txt)
    git commit -m "${commitMessage}"
    git tag "${commitMessage}" -m "${commitMessage}"
  fi
done
# pop
cd -
