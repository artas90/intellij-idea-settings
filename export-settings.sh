#!/usr/bin/bash
settings_dir="$HOME/Library/Application Support/JetBrains/IdeaIC2024.1"
cp -rf "${settings_dir}/options" "./settings"
cp -rf "${settings_dir}/keymaps" "./settings"
