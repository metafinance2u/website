#!/bin/sh

echo "The current working directory: $PWD"

## use pwd command ##
_mydir="$(pwd)"
_wwwdir=$_mydir/docs

gsutil web set -m index.html -e 404.html gs://www.metafinance2u.com