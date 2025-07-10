#!/usr/bin/env bash
bundle exec jekyll build
cp _site/* repo/
cd repo
touch .nojekyll
echo "My [website]!(https://kkilmetis8.github.io/home/)" > README.md
git add .
git commit -m "$1"
git push
cd ..
echo "Build script finished"
