git checkout site
rm -rf _site/
jekyll build
git add --all
git commit -m "`date`"
git push origin `git subtree split --prefix _site/ site`:gh-pages --force