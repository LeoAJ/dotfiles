#!/usr/bin/env bash

# bash script to initialize python project

# create pyrightconfig.json file for python LSP
filename="pyrightconfig.json"
current_dir=$(pwd)

json_content=$(cat << EOF
{
  "venv": ".venv",
  "venvPath": "$current_dir"
}
EOF
)

# create python venv
create_venv() {
  python3 -m venv $1
  source $1/bin/activate
  python3 -m pip install --upgrade pip
}

create_venv .venv
echo "$json_content" > "$filename"
