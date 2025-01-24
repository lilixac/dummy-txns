#!/bin/bash
for i in $(seq 1 5); do
    echo "Calling"
cast send $1 "setNumber()()" --rpc-url http://127.0.0.1:8545  --private-key 0x5de4111afa1a4b94908f83103eb1f1706367c2e68ca870fc3fb9a804cdab365a -- --broadcast
done