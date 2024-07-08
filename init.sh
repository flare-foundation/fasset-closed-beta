#!/bin/bash

set -e

if [ ! -d ./fasset-bots ]; then
    echo "Missing directory fasset-bots. Please run 'git submodule update --remote --merge'."
    exit 1
fi

git pull origin develop
cd ./fasset-bots
git checkout private_beta
git pull origin private_beta
yarn
yarn clean
yarn build
