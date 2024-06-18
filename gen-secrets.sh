#!/bin/bash

./init.sh
node ../fasset-bots/packages/fasset-bots-cli/dist/src/cli/key-gen.js generateSecrets -o secrets.json --user --other --agent "$@"
