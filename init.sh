#!/bin/bash

set -e

if [ ! -d ../fasset-bots ]; then
    echo "Missing directory ../fasset-bots. Please checkout 'https://github.com/flare-labs-ltd/fasset-bots.git' in the parent directory."
    exit 1
fi

cd ../fasset-bots
git checkout private_beta
git pull origin private_beta
yarn
yarn clean
yarn build
