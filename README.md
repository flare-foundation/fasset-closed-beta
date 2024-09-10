# FAsset Closed Beta

This repository is a virtual control environment for the FAssets closed beta participants.
It will be updated for each new closed beta scenario, allowing users to pull the latest version to set up their environment.

## Prerequisites

> **IMPORTANT:_**  All actions must be executed from this repository directory using bash (*.sh) scripts without changing the directory.

ℹ️ All actions should be executed from this directory; navigating elsewhere is unnecessary.

💻 Linux operating system preferred. macOS also may work, but use at your own risk.

⌨️ All communication regarding the scenario schedule will be communicated on Telegram.

🔢 Use the `yarn` version that is included with this tool.

🧵 [Docker](https://www.docker.com/products/docker-desktop/) to run the MySQL database.

## Install MySQL database with Docker

1. [Download](https://www.docker.com/products/docker-desktop/) and install Docker Desktop.
2. Start the MySQL server as a Docker container `docker compose up -d` and keep it running every time you run the scenario.
3. Enter the MySQL as root with password root (default) and execute the `init.mysql.sql` file to create the `fassetbot` user and set permissions.
4.Set up the database `user` and `password` in the `secrets.json` by adding this block to the list and changing the password to the one you use.:
	```
	"database": {
	    "user": "fassetbot",
        "password": "my1beta2password3"
 	}
	```
5. Please change the value of `extends` to `coston-bot-mysql.json` in the `config.json` file.
6. Run the MySQL with

## First Time Setup

Follow the steps below to set up your local environment for the first time. If you have set the environment before, go to [Scenario Setup](#scenario-setup).

1. Clone the repository end and enter the folder
    ```
    git clone --recurse-submodules https://github.com/flare-foundation/fasset-closed-beta.git
    cd fasset-closed-beta
    ```
2. If you don't have the `secrets.json` file set up, see [Secrets](#secrets) guide; otherwise, follow the next step;
3. Place your `secrets.json` file in the `fasset-closed-beta` folder under the name `secrets.json`;
4. Use these values in the `secrets.json` file for the `native_rpc` and `indexer` under the `apiKey` key:

    * `"native_rpc": "AavSehMLhcgz3crQHH5YJ3Rt8GMQGdV9aViGilADXGnTcjij"`
    * `"indexer": "123456"`

5. Obtain the API key via registering on Telegram - follow the [Telegram](#telegram) guide;
6. Go to [Agent Owner Registry](https://coston-explorer.flare.network/address/0x746cBEAa5F4CAB057f70e10c2001b3137Ac223B7/write-contract#address-tabs) smart contract, connect via Metamask with your `management.address` from the `secrets.json`, and call `setWorkAddress` with your `secrets.owner.native.address` as an argument. Remember that this is a different smart contract from the official docs for the FAssets Open Beta.

## Scenario Setup

For each new scenario, follow the steps below:

1. Initialize repository:
    ```
    ./init.sh
    ```
2. Ensure that the configuration is correct and that the output is green.
    ```
    ./check.sh
    ```
3. Continue using the [Scenario Testing Tool](https://fasset-beta-simulator.flare.rocks/fasset-scenario) and join the scenario there.
4. If you need to answer some questions about the [Scenario Testing Tool](https://fasset-beta-simulator.flare.rocks/fasset-scenario), refer to this [document](https://docs.google.com/document/d/1QblHG_HLMsdE1YfJoZPXQIFhE4AYik-Xhk4Ux4M_jXo/edit?usp=sharing) or ask on Telegram from one of the Flare Developer Relations engineers.

## Additional Setup

### Secrets

If you do not have the `secrets.json` file, you should follow the below steps:

1. Make sure you came here from [First Time Setup](#first-time-setup),
2. Generate a management address - this is an EVM address that will control your agent for the duration of the closed/open beta,
3. Obtain `secrets.json` by running:
    ```
    ./gen-secrets.sh <management_address>
    ```
4. Fund your `secrets.owner.native.address` and `secrets.user.native.address` with some CFLR from the [this Faucet](https://faucet.flare.network/), and some testXRP from the [this faucet](https://faucet.tequ.dev/).

### Telegram

To register and get your closed beta API key, do the following:

1. Go to our [FAsset Telegram bot](https://t.me/FlareFAssets_ClosedBetaBot),
2. Start the bot by running `/start`, then click `Register`, and input the required info, including your user address that is `user.native.address` from the `secrets.json` file,
3. Wait for us to confirm your registration info,
4. Run (send message) `/events`, click `Subscribe to Events`, and receive your API key.
5. To subscribe to receiving agent events on Telegram, put the API key from the last step in the local `config.json` file under `apiKey` in the current `fasset-closed-beta` directory.