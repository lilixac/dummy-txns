#!/bin/bash

for i in $(seq 1 5); do
    echo "Calling"
    cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "setNumber()()" --rpc-url http://127.0.0.1:8545 --private-key 0x7c852118294e51e653712a81e05800f419141751be58f605c371e15141b007a6 -- --broadcast
done
