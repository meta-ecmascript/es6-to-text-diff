#!/bin/bash

cd es6-draft-revision/
declare currentDirName=${PWD##*/}
if [ "${currentDirName}" != "es6-draft-revision" ]; then
    echo "${currentDirName} is not es6-draft-revision"
    exit 1;
fi
# git push
git remote add origin git@github.com:meta-ecmascript/es6-draft-revision.git
git push --set-upstream origin master -f --follow-tags
# pop
cd -
