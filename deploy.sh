#!/bin/sh

git clone git@github.com:ethereum/go-ethereum.git
cd go-ethereum && git checkout v1.10.26
git apply ../geth_v1.10.26_precompiled.diff
docker build -t realwrap_geth .
cd .. && docker-compose up -d
