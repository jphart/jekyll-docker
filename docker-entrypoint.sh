#! /bin/bash
set -e

echo $1
if [ "$1" = 'serve' ]; then
    cd /data
    echo "Cleaning up..."
    rm -rf _site
    rm -rf .jekyll-cache
    echo "Starting jekyll"
    bundle install
    bundle exec jekyll serve --H 0.0.0.0 --incremental
fi
exec "$@"