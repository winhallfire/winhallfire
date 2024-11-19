#!/bin/bash

cd build/html/
cp -r  _images/* images/
cp -r  _static/* static/
cp -r  _sources/* sources/
rm -fR _images _static _sources
perl -i -pe 's/"_/"/g' genindex.html
perl -i -pe 's/"_/"/g' index.html
perl -i -pe 's/"_/"/g' search.html
cd ../..

