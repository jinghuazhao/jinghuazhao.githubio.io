#!/usr/bin/bash

bundle exec jekyll build --incremental
for f in .gitignore $(ls)
do
  git add ${f}
  git commit -m "${f}" --no-verify
done
git push
