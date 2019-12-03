# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

cp index.html 404.html

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:duyanh3110/images-gallery.git master:gh-pages

cd -
