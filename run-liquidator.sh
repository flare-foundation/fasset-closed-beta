#!/bin/bash

chmod 600 secrets.json
node ./fasset-bots/packages/fasset-bots-cli/dist/src/run/run-liquidator.js "$@"
