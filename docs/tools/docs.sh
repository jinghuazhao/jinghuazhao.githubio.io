#!/usr/bin/bash

cd docs
bundle exec jekyll build --incremental
cd -
for f in $(ls)
do
  git add ${f}
  git commit -m "${f}" --no-verify
done
git push
