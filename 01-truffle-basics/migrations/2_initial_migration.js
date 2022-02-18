// migrations nos sirve para hacer el deploy de los contratos.
const Hello = artifacts.require("Hello");

module.exports = function (deployer) {
  deployer.deploy(Hello);
};
