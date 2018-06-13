# solidity_sandbox
Sandbox for experiments and code samples pertaining to all things Solidity

## Environment setup
- install node
- update npm to the latest using `sudo npm i -g npm`
- install homebrew
- Note: Latest versions of these `nodejs` dependencies in `setup/package.json` taken from github at the time of writing. Later versions may be available when running this
- run `npm install` from `setup` folder where `package.json` resides
- install https://github.com/trufflesuite/ganache (optional)
- install `geth` Ethereum client by running `brew install ethereum` (can take a while)
- install the official Ethereum wallet application (Mist) from `https://github.com/ethereum/mist/releases`. Note: this synchronises with the Ethereum blockchain. Only do so if you have the 10s of GB of space


## Environment setup verification
- start `ganache-cli` from the command line in the project root by running: `ganache-cli` (should start a local Ethereum node)
- confirm `web3js` is available from the `node` command line by running in the project root: `node` then `require("solc")` and require("web3") and require("ganache-cli")
- run `geth version`