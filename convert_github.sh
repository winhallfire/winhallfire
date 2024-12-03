#!/bin/bash

cd build/html/

mkdir -p images static sources

cp -r  _images/* images/
cp -r  _static/* static/
cp -r  _sources/* sources/

rm -fR _images _static _sources

perl -i -pe 's/"_/"/g' *.html

cd ../..

