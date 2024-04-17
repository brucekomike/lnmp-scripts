#!/bin/bash

#flarum
mkdir flarum
mv flarum*.zip ./flarum
unzip ./flarum/*.zip -d ./flarum

# chyrp
#mkdir chyrp
#mv *.zip ./chyrp
#unzip ./chyrp/*.zip -d ./chyrp

#phproject
mkdir phproject
mv phproject*.zip ./phproject
unzip ./phproject/*.zip -d ./phproject

for file in "./*.zip"
do
unzip "$file"
done

for file in "./*.tar.gz"
do
tar -zxf $file
done