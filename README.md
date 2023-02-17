# RealWorld CTF 5th - realwrap

## Description

WETH on Ethereum is too cumbersome! I'll show you what is real Wrapped ETH by utilizing precompiled contract, it works like a charm especially when exchanging ETH in a swap pair. And most important, IT IS VERY SECURE!

nc ip 20000

faucet: http://ip:8080

RPC(geth v1.10.26 with realwrap patch): http://ip:8545

[attachment](https://github.com/iczc/rwctf-5th-realwrap/releases)

## Deployment

### Prerequisites

* Docker
* Docker Compose
* Git

```bash
./deploy.sh
```

## Exploit

Configure the web3 provider and private key in `hardhat.config.js`, and then run:

```bash
export FACTORY_ADDRESS="your factory address"
npx hardhat run scripts/exploit.js --network local
```
