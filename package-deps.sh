#!/bin/bash

nvim --headless -c "luafile lazy-package-discovery.lua" -c "qa"

cd ./pkg

# Path to your CSV file
csv_file="../nvim_plugins_list.txt"

# Skip the header and loop over each line
tail -n +1 "$csv_file" | while IFS=',' read -r package_name package_url
do
  echo "Cloning $package_name from $package_url"
  git clone "$package_url"
done


cd ..


