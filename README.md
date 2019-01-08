# solidity_sandbox
Sandbox for experiments and code samples pertaining to all things Solidity

## Environment setup
- install nodeJS
- install npm (does this come with node?)
- update npm to the latest using `sudo npm i -g npm`
- install homebrew
- install Ganache (https://truffleframework.com/ganache)
    - alternatively install Ganache CLI `npm install -g ganache-cli`
- OPTIONAL: install `geth` Ethereum client by running `brew install ethereum` (can take a while)
    - WARNING: you may not wanna run a full node on laptop (takes a lot of hared drive space and days to sync from Internet the first time)
- OPTIONAL: Mist Ethereum Wallet (install from from `https://github.com/ethereum/mist/releases) - user friendly UI to interact with Ethereum (Mist = wallet + built-in own browser, and Etherum Wallet = exactly the same wallet, but the built-in browser is disabled.) WARNING: you may not wanna run a full node on laptop (takes a lot of hared drive space and days to sync from Internet the first time)
- install metamask in your browser
- install Octotree (usefull for easily navigating www.github.com on LHS of browser)
- copy `https://github.com/ethereum/web3.js/blob/develop/dist/web3.min.js` to a local directory to use Web3
    - always choose the latest beta (not the 'develop' branch. Instead pick the tag with the highest release version)
- install lite-server (very simple web server) by running `npm install -g lite-server`

--*********update 25/11/2018*********   
- install VirtualBox & Vagrant
- install Blockgeeks development environment: https://app.vagrantup.com/blockgeeks/boxes/env
    - run `vagrant init blockgeeks/env` in the root of your development environment folder
    - update 'VagrantFile' to include the following:
      `config.vm.box = "blockgeeks/env"`
      `config.vm.box_version = "0.0.1"`
      `config.vm.synced_folder ".", disabled: false`
    - run `vagrant up` to provision the Vagrant environment
    - run `vagrant ssh` to connect to the vagrant environment
    - In vagrant shell `cd /vagrant` to go to the folder that launched the vagrant instance to provide access to all the files in that folder  

??????CHECK ALL BELOW????????
- Note: Latest versions of these `nodejs` dependencies in `setup/package.json` taken from github at the time of writing. Later versions may be available when running this
- run `npm install` from `setup` folder where `package.json` resides
- run `sudo npm install -g remixd --unsafe-perm=true --allow-root` to allow Remix use source code from hard drive then run the following to choose a shared folder `remixd -s /Users/bgaughran/IdeaProjects/solidity_sandbox/contracts` then click the 'link' icon in remix to load the files. See https://remix.readthedocs.io/en/latest/tutorial_remixd_filesystem.html for more details


## Environment setup verification
- start `ganache-cli` from the command line in the project root by running: `ganache-cli` (should start a local Ethereum node)
- confirm `web3js` is available from the `node` command line by running in the project root: `node` then `require("solc")` and require("web3") and require("ganache-cli")
- confirm `ethereumjs-util` is available from the `node` command line by running in the project root: `node` then `require("ethereumjs-util")`
util = require("ethereumjs-util")

- run `geth version`
