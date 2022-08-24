#!/usr/bin/bash

function gh_pages()
{
  cd docs/_site
  git checkout -b gh-pages
  git add -f *
  git commit -m "_site"
  git push --set-upstream origin gh-pages
  cd -
}

cd docs
bundle exec jekyll build
cd -
for f in .gitignore $(ls)
do
  git add ${f}
  git commit -m "${f}" --no-verify
done
git push
du -hs --exclude .git --exclude _site
