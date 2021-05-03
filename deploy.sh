#!/bin/bash

git checkout gh-pages
git pull origin gh-pages
git merge master
bundle exec middleman build
mv -f build docs
cd docs
echo 'ferperales.net' > CNAME
cd ../
git add .
git commit -m "New release"
git push origin gh-pages
git checkout master
