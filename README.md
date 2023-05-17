# ETH-NET
Creating a Private Ethereum Network for running Dapp || Smart Contract
-----------------------------------------------------------------------------
FOLLOWING ARE THE STEPS TO MAKE YOUR OWN PRIVATE ETHEREUM TESTNET
-------------------------------------------------------------------------------
AWS SECURITY GROUP
n the security group step, you'll need to set up rules that allow traffic on certain ports: A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. For Ethereum network, you should open the following ports:

SSH (TCP port 22) for remote management. This is how you'll connect to your instance from your local machine.
Ethereum P2P (TCP and UDP port 30303) for the Ethereum peer-to-peer network. This is necessary for your nodes to communicate with each other.
Ethereum IPC (Inter-Process Communication) if you are going to use it, it is optional. This is used for local communication between Ethereum software.
-------------------------------------------------------------------------------

Creating a private Ethereum network using Geth is a great way to experiment with smart contracts, decentralized applications (DApps), and learn about blockchain technology. Here's a step-by-step guide to help you set up a private Ethereum network using Geth:

Install Geth: Download and install the latest version of Geth for your platform from the official website: https://geth.ethereum.org/

Create a new directory for your private network:
mkdir my-private-network
cd my-private-network

-----------------------------------------------------------------------------------------
TO DOWNLOAD GETH
wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.11.6-ea9e62ca.tar.gz

tar -xvf geth-linux-amd64-1.11.6-ea9e62ca.tar.gz

cd geth-linux-amd64-1.11.6-ea9e62ca

sudo mv geth /usr/local/bin/

-------------------------------------------------------------------------------------------
TO VALIDATE
geth init --datadir ./data genesis.json

-----------------------------------------------------------------------------------------------
TO RUN
geth --datadir ./data --networkid 12345 --nodiscover --http --http.addr 127.0.0.1 --http.port 8545 --http.api "eth,web3,personal,net,miner" --allow-insecure-unlock --mine --miner.etherbase=0x15Ee69DDA18AE1FAe5EE234BD5195A013d53Bea6
