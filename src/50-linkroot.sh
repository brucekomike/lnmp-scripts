#!/bin/bash

# directory containing the files to link
source_dir="/opt/www"

# directory where the symbolic links will be created
target_dir="/var/www"

# create symbolic links for all files in source directory
for dir in "$source_dir"/*/
do
  # remove trailing slash
  dir=${dir%*/}
  # get the base directory name
  base_dir=$(basename "$dir")
  # create symbolic link for the directory
  ln -s "$dir" "$target_dir/$base_dir"
done