#!/bin/bash

set -e

if [ ! -d ../fasset-bots ]; then
    echo "Missing directory ../fasset-bots. Please cehckout 'https://github.com/flare-labs-ltd/fasset-bots.git' in the parent directory."
    exit 1
fi

cd ../fasset-bots
yarn
yarn clean
yarn build
