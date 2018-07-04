// Allows us to use ES6 in our migrations and tests.
require('babel-register')

module.exports = {
  networks: {
    development: {
      host: 'localhost',//'127.0.0.1',
      port: 8545,// 8545 for Ropsten test network, 7545 for ganache
      network_id: '*',// Match any network id
      gas: 4700000 
    }
  }
}
