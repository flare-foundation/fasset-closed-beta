# FAsset Closed Beta

This repository serves as a virtual control environment for FAsset closed beta participants.
It will get updated for each new closed beta scenario, so users only need to pull the new version to set up their environment.

## Prerequisites

If you do not have the `fasset-bots` repo or `secrets.json` file set-up, you should follow the below steps:
1. Clone [fasset-bots](https://github.com/flare-labs-ltd/fasset-bots.git) repository,
1. Obtain some CFLR from the [FAsset Faucet](https://faucet.flare.network/),
1. Generate your management address - this is an EVM address that will control your agent for the duration of the closed/open beta,
1. Obtain a `secrets.json` by running `gen-secrets.sh <management_address>`.

The above needs to be done only once per closed-beta.

## Register on Telegram

To officially register and get your closed beta API key, do the following:
1. Go to our [FAsset Telegram bot](https://t.me/FlareFAssetsBot),
1. Start the bot by running `/start`, then click `Register`, and input your info with the management address you generated in #Prerequisites,
1. Run (send message) `/events`, click `Subscribe to Events`, and receive your API key.

To additionally subscribe to agent events on Telegram, put the API key from the last step in the local `config.json` file under `apiKey`.

## Preparing for the scenario

The following should be done before each closed beta scenario setup:
1. Run `init.sh` script,
1. Run `check.sh` script and make sure there is only one address outputted and compare it with our published one???
