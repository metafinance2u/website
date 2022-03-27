#!/bin/sh

echo "The current working directory: $PWD"

## use pwd command ##
_mydir="$(pwd)"
_wwwdir=$_mydir/docs

gsutil -h "Cache-Control:public, max-age=60" -m cp -z html $_wwwdir/index.html gs://www.metafinance2u.com

gsutil ls -L gs://www.metafinance2u.com/index.html


gsutil setmeta -h "Cache-Control:public, max-age=600" -r gs://www.metafinance2u.com/vendor
gsutil setmeta -h "Cache-Control:public, max-age=600" -r gs://www.metafinance2u.com/business
gsutil setmeta -h "Cache-Control:public, max-age=600" -r gs://www.metafinance2u.com/404

echo "done"

