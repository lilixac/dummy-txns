#!/bin/bash

# Call each script in the background
./script1.sh &
./script2.sh &
./script3.sh &
./script4.sh &

# Wait for all background jobs to finish
wait

echo "All scripts have completed."