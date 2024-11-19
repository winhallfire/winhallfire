#!/bin/bash

make html
cd build/html/
mv _images images
mv _static static
mv _sources sources
perl -i -pe 's/"_/"/g' genindex.html
perl -i -pe 's/"_/"/g' index.html
perl -i -pe 's/"_/"/g' search.html
cd ../..

