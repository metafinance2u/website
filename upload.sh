#!/bin/sh

echo "The current working directory: $PWD"

## use pwd command ##
_mydir="$(pwd)"
_wwwdir=$_mydir/www

#gsutil -h "Cache-Control:public, max-age=60" -m cp -z html $_wwwdir/index.html gs://metafinance2u.com
#gsutil -h "Cache-Control:public, max-age=60" -m cp -z js $_wwwdir/vendor/js/contact_us.js gs://metafinance2u.com/vendor/js/contact_us.js

#gsutil  cp -z html,js,css -r $_wwwdir/404 gs://metafinance2u.com
#sutil  cp -z html,js,css -r $_wwwdir/404.html gs://metafinance2u.com/404.html
#gsutil  cp -z html,js,css -r $_wwwdir/business gs://metafinance2u.com
#gsutil  cp -z html,js,css -r $_wwwdir/vendor gs://metafinance2u.com

gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/index.html gs://metafinance2u.com/index.html
gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/zh.html gs://metafinance2u.com/zh.html
#gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/index2.html gs://metafinance2u.com/index2.html
#gsutil -h "Cache-Control:public, max-age=60" cp -z html,js,css -r $_wwwdir/404.html gs://metafinance2u.com/404.html
#gsutil -h "Cache-Control:public, max-age=600" cp -z html,js,css -r $_wwwdir/sitemap.xml gs://metafinance2u.com/sitemap.xml
#gsutil  cp -z html,js,css -r $_wwwdir/404.html gs://metafinance2u.com/404.html
#gsutil  cp -z html,js,css -r $_wwwdir/vendor gs://metafinance2u.com
gsutil  -h "Cache-Control:public, max-age=600" cp -z html,js,css -r $_wwwdir/business gs://metafinance2u.com

#gsutil  cp -z html,js,css -r $_wwwdir/vendor gs://metafinance2u.com

#gsutil  cp -z css -r $_wwwdir/business/css gs://metafinance2u.com/business
#gsutil  cp -r $_wwwdir/business/img gs://metafinance2u.com/business

echo "done"

