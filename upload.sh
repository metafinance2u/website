#!/bin/sh

echo "The current working directory: $PWD"

## use pwd command ##
_mydir="$(pwd)"
_wwwdir=$_mydir/docs

gsutil -h "Cache-Control:public, max-age=60" -m cp -z html $_wwwdir/index.html gs://www.metafinance2u.com
#gsutil -h "Cache-Control:public, max-age=60" -m cp -z js $_wwwdir/vendor/js/contact_us.js gs://www.metafinance2u.com/vendor/js/contact_us.js

gsutil  cp -z html,js,css -r $_wwwdir/404 gs://www.metafinance2u.com
gsutil  cp -z html,js,css -r $_wwwdir/404.html gs://www.metafinance2u.com/404.html
gsutil  cp -z html,js,css -r $_wwwdir/business gs://www.metafinance2u.com
gsutil  cp -z html,js,css -r $_wwwdir/vendor gs://www.metafinance2u.com

gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/index.html gs://www.metafinance2u.com/index.html
gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/zh.html gs://www.metafinance2u.com/zh.html
#gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/index2.html gs://www.metafinance2u.com/index2.html
gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/404.html gs://www.metafinance2u.com/404.html
gsutil -h "Cache-Control:public, max-age=600" cp -z html,js,css -r $_wwwdir/sitemap.xml gs://www.metafinance2u.com/sitemap.xml
#gsutil  cp -z html,js,css -r $_wwwdir/404.html gs://www.metafinance2u.com/404.html
#gsutil  cp -z html,js,css -r $_wwwdir/vendor gs://www.metafinance2u.com
gsutil  -h "Cache-Control:public, max-age=600" cp -z html,js,css -r $_wwwdir/business gs://www.metafinance2u.com

#gsutil  cp -z html,js,css -r $_wwwdir/vendor gs://www.metafinance2u.com

#gsutil  cp -z css -r $_wwwdir/business/css gs://www.metafinance2u.com/business
#gsutil  cp -r $_wwwdir/business/img gs://www.metafinance2u.com/business

echo "done"

