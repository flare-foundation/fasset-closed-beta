#!/bin/bash

set -e

if [ ! -d ./fasset-bots ]; then
    echo "Missing directory fasset-bots. Please run 'git submodule update --remote --merge'."
    exit 1
fi

git pull origin develop
cd ./fasset-bots
git checkout closed-beta-specific
git pull origin closed-beta-specific
yarn
yarn clean
yarn build
