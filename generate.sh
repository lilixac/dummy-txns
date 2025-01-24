#!/bin/bash

# File to store the generated addresses
OUTPUT_FILE="addresses.txt"

# Number of addresses to generate
NUM_ADDRESSES=1000

# Clear the output file
> $OUTPUT_FILE

echo "Generating $NUM_ADDRESSES Ethereum addresses..."

for ((i=1; i<=NUM_ADDRESSES; i++))
do
    # Generate a random 40-character hexadecimal string
    RANDOM_ADDRESS="0x$(openssl rand -hex 20)"
    
    # Save the address to the file
    echo $RANDOM_ADDRESS >> $OUTPUT_FILE
done

echo "Addresses saved to $OUTPUT_FILE"

ADDRESSES=$(tr '\n' ',' < addresses.txt | sed 's/,$//')

address=$(forge create --rpc-url http://127.0.0.1:8545 --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d src/Addr.sol:Addr --json | jq -r .deployedTo)


cast send $address "saveAddresses(address[])" "[$ADDRESSES]" --rpc-url http://127.0.0.1:8545  --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d -- --broadcast
