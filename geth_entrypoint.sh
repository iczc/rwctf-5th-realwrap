#!/bin/sh

GETH_DATA_DIR=/chaindata
GETH_CHAINDATA_DIR=$GETH_DATA_DIR/geth/chaindata

if [ ! -d "$GETH_CHAINDATA_DIR" ]; then
    geth init --datadir="$GETH_DATA_DIR" /genesis.json
fi

exec geth \
    --datadir="$GETH_DATA_DIR" \
    --password="$GETH_DATA_DIR"/password.txt \
    --allow-insecure-unlock \
    --unlock="0" \
    --mine \
    --networkid=45267 --nodiscover \
    --http --http.addr=0.0.0.0 --http.port=8545 \
    --http.api=eth,net,web3 \
    --http.corsdomain='*' --http.vhosts='*'
