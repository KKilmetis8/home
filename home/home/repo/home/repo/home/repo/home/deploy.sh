#!/usr/bin/env bash
bundle exec jekyll build
cp -r _site/* repo/home
cd repo/home
touch .nojekyll
echo "My [website](https://kkilmetis8.github.io/home/)!" > README.md
git add .
git commit -m "$1"
git push
cd ..
echo "Build script finished"
