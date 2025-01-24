#!/bin/bash

for i in $(seq 1 5); do
    echo "Calling"
cast send $1 "setNumber()()" --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 -- --broadcast
done