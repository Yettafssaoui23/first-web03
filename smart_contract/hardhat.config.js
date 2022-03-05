// https://eth-ropsten.alchemyapi.io/v2/Yz6yfIhRDDmwfarlPx-ebFq4Y1NK8e-L

require("@nomiclabs/hardhat-waffle");


module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/Yz6yfIhRDDmwfarlPx-ebFq4Y1NK8e-L',
      accounts: ['cdcafb23d5f1fa5877b5646e7553c514e5392354bf2668182217d474af89732e'],
    },
  },
};