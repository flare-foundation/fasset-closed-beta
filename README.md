# FAsset Closed Beta

This repository serves as a virtual control environment for FAsset closed beta participants.
It will get updated for each new closed beta scenario, so users only need to pull the new version to set up their environment.

> **Important**
> DO NOT LEAVE THIS REPO, AFTER CLONING FORGET FASSET-BOTS! ALL COMMANDS MUST BE RUN FROM FASSET-CLOSED-BETA REPO!

> **Important**
> WE REQUIRE LINUX!!!! mac also maybe works but use at your own risk

> **Important**
> All communication regarding scenario schedule will be communicated on Telegram.

## Local One-Time Setup

Follow the steps below to set up your local environment for the first time:
1. Make a new folder and `cd` into it,
1. Run `git clone https://github.com/flare-labs-ltd/fasset-bots.git`,
1. Run `git clone https://github.com/flare-foundation/fasset-closed-beta.git`,
1. Place your `secrets.json` file in the `fasset-closed-beta` folder under the name `secrets.json`! (if you do not have the file, see [Secrets](#secrets)),
1. Obtain an API key via registering on Telegram - see [Telegram](#telegram)

## Scenario Setup

For each new scenario follow the steps below:
1. `cd` into `fasset-closed-beta`,
1. Run `init.sh`,
1. Run `check.sh` to make sure your configuration is correct. The return must be 
```
Correct configuration setup! (agent ...)
```
4. Continue on https://fasset-beta-simulator.flare.rocks/fasset-scenario

## Additional information

### Secrets

If you do not have the `secrets.json` file, you should follow the below steps:
1. Make sure you came here from following [Local One-Time Setup](#local-one-time-setup),
1. Generate a management address - this is an EVM address that will control your agent for the duration of the closed/open beta,
1. Obtain `secrets.json` by running `gen-secrets.sh <management_address>`,
1. Fund your `secrets.owner.native.address` and `secrets.user.native.address` with some CFLR from the [FAsset Faucet](https://faucet.flare.network/).

### Telegram

To officially register and get your closed beta API key, do the following:
1. Go to our [FAsset Telegram bot](https://t.me/FlareFAssetsBot),
1. Start the bot by running `/start`, then click `Register`, and input the required info,
1. Wait for us to confirm your registration info,
1. Run (send message) `/events`, click `Subscribe to Events`, and receive your API key.

To subscribe to receiving agent events on Telegram, put the API key from the last step in the local `config.json` file under `apiKey`.