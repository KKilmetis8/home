#!/usr/bin/env bash
bundle exec jekyll build
cp -r _site/* home
cd home
touch .nojekyll
echo "My [website](https://kkilmetis8.github.io/home/)!" > README.md
git checkout gh-pages
git add .
git commit -m "$1"
git push -u origin gh-pages --force
cd ..
echo "Build script finished"
