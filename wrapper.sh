#!/bin/bash

address=$(forge create --rpc-url http://127.0.0.1:8545 --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d src/Counter.sol:Counter --json | jq -r .deployedTo)

echo $address

# # Call each script in the background
./script1.sh $address &
./script2.sh $address &
./script3.sh $address &
./script4.sh $address &

# Wait for all background jobs to finish
wait

echo "All scripts have completed."
