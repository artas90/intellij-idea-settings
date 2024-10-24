#!/usr/bin/bash

if [[ $OSTYPE == darwin* ]]; then
  jetbrains_dir="$HOME/Library/Application Support/JetBrains"
elif [[ $OSTYPE == linux-* ]]; then
  jetbrains_dir="$HOME/.config/JetBrains"
else
  echo "only osx or linux is supported"
  exit
fi

ide_version=`ls "${jetbrains_dir}" | grep "IdeaIC" | grep -v backup | tail -n1`
settings_dir="${jetbrains_dir}/${ide_version}"

cp -rf "${settings_dir}/options" "./settings"
cp -rf "${settings_dir}/keymaps" "./settings"
