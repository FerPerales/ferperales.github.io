#!/bin/bash

git checkout gh-pages
git pull origin gh-pages
git merge main --no-edit
bundle exec middleman build
rm -rf docs
mv -f build docs
cd docs
echo 'ferperales.net' > CNAME
cd ../
git add .
git commit -m "New release"
git push origin gh-pages --force
git checkout main
