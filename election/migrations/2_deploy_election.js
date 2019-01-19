var Election = artifacts.require("Election");

module.exports = function(deployer) {
  deployer.deploy(Election,"Election 2019","Cantona","Keane");
};
