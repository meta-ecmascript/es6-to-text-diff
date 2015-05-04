#!/bin/bash

cd es6-draft-revision/
# git push
git remote add origin git@github.com:meta-ecmascript/es6-draft-revision.git
git push --set-upstream origin master -f --follow-tags
# pop
cd -
