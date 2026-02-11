#!/bin/bash

# Create a named pipe
PIPE=/tmp/flutter_reload_pipe
rm -f $PIPE
mkfifo $PIPE

# Start flutter and feed it from the pipe
cat $PIPE | flutter run -d macos &
FLUTTER_PID=$!

# Function to cleanup on exit
cleanup() {
    rm -f $PIPE
    kill $FLUTTER_PID 2>/dev/null
}
trap cleanup EXIT

# Start watchexec in background to auto-reload on file changes
watchexec -e dart -w lib -- echo 'r' > $PIPE &
WATCH_PID=$!

# Forward keyboard input to the pipe (for manual R, q, etc.)
while true; do
    read -n 1 -s key
    echo "$key" > $PIPE
    
    # Exit if 'q' is pressed
    if [ "$key" = "q" ]; then
        break
    fi
done

# Cleanup
kill $WATCH_PID 2>/dev/null
