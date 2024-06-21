# FAsset Closed Beta

This repository is a virtual control environment for the FAssets closed beta participants.
It will be updated for each new closed beta scenario, allowing users to pull the latest version to set up their environment.

> **Operating System Requirement**
> Linux operating system preferred. macOS also may work, but use at your own risk.

> **Communication**
> All communication regarding the scenario schedule will be communicated on Telegram.

## First Time Setup

Follow the steps below to set up your local environment for the first time. If you have set the environment before, go to [Scenario Setup](#scenario-setup).

1. Clone the repository end and enter the folder
    ```
    git clone --recurse-submodules https://github.com/flare-foundation/fasset-closed-beta.git
    cd fasset-closed-beta
    ```
2. If you don't have the `secrets.json` file set up, see [Secrets](#secrets) guide; otherwise, follow the next step;
3. Place your `secrets.json` file in the `fasset-closed-beta` folder under the name `secrets.json`;
4. Obtain the API key via registering on Telegram - follow the [Telegram](#telegram) guide;
5. Go to [Agent Owner Registry](https://coston-explorer.flare.network/address/0x746cBEAa5F4CAB057f70e10c2001b3137Ac223B7/write-contract#address-tabs), connect via Metamask with your `management.address` from the `secrets.json`, and call `setWorkAddress` with your `secrets.owner.native.address` as an argument.

## Scenario Setup

For each new scenario, follow the steps below:

1. Initialize repository:
    ```
    init.sh
    ```
2. Please ensure that the configuration is correct and that the output is green.
    ```
    check.sh
    ```
3. Continue on the [Scenario Testing Tool](https://fasset-beta-simulator.flare.rocks/fasset-scenario) and follow the steps there.
4. If you need to answer some questions about the [Scenario Testing Tool](https://fasset-beta-simulator.flare.rocks/fasset-scenario), please refer to this [document](https://docs.google.com/document/d/1QblHG_HLMsdE1YfJoZPXQIFhE4AYik-Xhk4Ux4M_jXo/edit?usp=sharing) or ask on Telegram from one of the Flare Developer Relations engineers.

## Additional Setup

### Secrets

If you do not have the `secrets.json` file, you should follow the below steps:

1. Make sure you came here from [First Time Setup](#first-time-setup),
2. Generate a management address - this is an EVM address that will control your agent for the duration of the closed/open beta,
3. Obtain `secrets.json` by running:
    ```
    gen-secrets.sh <management_address>
    ```
4. Fund your `secrets.owner.native.address` and `secrets.user.native.address` with some CFLR from the [this Faucet](https://faucet.flare.network/), and some testXRP from the [this faucet](https://faucet.tequ.dev/).

### Telegram

To register and get your closed beta API key, do the following:

1. Go to our [FAsset Telegram bot](https://t.me/FlareFAssets_ClosedBetaBot),
2. Start the bot by running `/start`, then click `Register`, and input the required info,
3. Wait for us to confirm your registration info,
4. Run (send message) `/events`, click `Subscribe to Events`, and receive your API key.
5. To subscribe to receiving agent events on Telegram, put the API key from the last step in the local `config.json` file under `apiKey`.