# Token-based-Voting-dapp
 
 Staging/Testing: Ropsten Geth Command for test
    ```
    geth --testnet --syncmode fast --rpc --rpcapi db,eth,net,web3,personal --cache=1024 --rpcport 8545 --rpcaddr 127.0.0.1 --rpccorsdomain "*"
    ```

Geth argument explanation

--testnet: This tells geth to start and connect to the test network. The name of the network we connect to is called Ropsten. You will learn more about various test networks in the next section.

--syncmode fast: In the first course, we learned that when you download the blockchain software and start, it has to download the entire copy of the blockchain on to your computer. You can download the entire blockchain and execute every single transaction inside each block so you have the entire history of the blockchain locally. This is very time consuming. However, there are other modes/optimizations where you just download the transaction receipts instead of executing each and every transaction. We don't  need the blockchain history for this exercise, so we are going to use the fast mode to sync the blockchain. There is some good explanation of various modes here as well

--rpc --rpcapi db,eth,net,web3,personal: This tells geth to accept requests via RPC and also enable certain APIs we will be using in the next sections.

--rpcport 8545 --rpcaddr 127.0.0.1 --rpccorsdomain "*": This is the host and port at which we will be communicating with the blockchain server/geth using web3js library.

Command to deal with Account
    ```
    truffle console
    ```
    ```
    truffle(default)> web3.personal.newAccount('verystrongpassword')
    '0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1'
    truffle(default)> web3.eth.getBalance('0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1')
    { [String: '0'] s: 1, e: 0, c: [ 0 ] }
    truffle(default)> web3.personal.unlockAccount('0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1', 'verystrongpassword', 15000)
    ```
    or
     ```
    truffle(default)> web3.personal.listAccounts
    '0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1'
    truffle(default)> web3.eth.getBalance('0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1')
    { [String: '0'] s: 1, e: 0, c: [ 0 ] }
    truffle(default)> web3.personal.unlockAccount('0x95a94979d86d9c32d1d2ab5ace2dcc8d1b446fa1', 'verystrongpassword', 15000)
    ```   