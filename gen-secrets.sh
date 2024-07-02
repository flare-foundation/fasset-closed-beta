#!/bin/bash

./init.sh
node ./fasset-bots/packages/fasset-bots-cli/dist/src/cli/key-gen.js generateSecrets -o secrets.json --user --other --agent "$@"
sed -i 's/"native_rpc": ""/"native_rpc": "AavSehMLhcgz3crQHH5YJ3Rt8GMQGdV9aViGilADXGnTcjij"/g' secrets.json
sed -i 's/"indexer": ""/"indexer": "123456"/g' secrets.json