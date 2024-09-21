
# Change to the logs directory
cd logs-container

# Print out each log file
for log in *.log; do
    echo "Contents of $log:"
    cat "$log"
    echo
done

# Return to the original directory
cd ..

