# sh publi.sh
rm -rf _site/
bundle exec jekyll build
git add --all
git commit -m "`date`"
git push origin master
git push origin `git subtree split --prefix _site/ master`:gh-pages --force