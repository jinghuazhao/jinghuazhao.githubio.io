#!/usr/bin/bash

cd docs
bundle exec jekyll build --incremental
cd -
for f in .gitignore $(ls)
do
  git add ${f}
  git commit -m "${f}" --no-verify
done
git push
du -hs --exclude .git --exclude _site
