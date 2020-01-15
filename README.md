# A two node Ethereum private chain using Docker



The aim of this repository is to build a two-node Ethereum private chain using docker containers.


We deliver the example using two full nodes. One that manages the key for the mining account and the other one that is just a participant to the chain.

### Docker Setup

`docker-compose build`



`docker-compose up`


The previous commands will create a two node private chain with the following:



- **Miner node** with an account created by default with the exclusive power to add new blocks to the chain. We refer to this account as **the sealer** .  
Indeed, in private chain terminology is common to refer to the activity of new block addition as sealing instead of mining.

If we have geth installed on our machine we can attach to this node using the geth cli with the following command:  
`geth attach http://127.0.0.1:8544`
We will be able to attach to the geth cli and manage the api functions made available at node creation time.
Notwithstanding if geth is not installed locally, just run the command inside the bash of the container.

The same http address could be used to attach the Remix IDE or Metamask to the node with the aim of managing the accounts and their actions.


- **Dev Node** with an account created by default and prefunded. Although being able to send transactions to the ledger, it cannot add new blocks to the chain. Such activity being restricted to the etherbase account in the Miner Node
To attach to this node just run (locally or in the container):
 `geth attach http://127.0.0.1:8545`
