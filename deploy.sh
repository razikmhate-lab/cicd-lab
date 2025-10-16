#!/bin/bash
echo "Starting deployment script..."

# Find and kill the old running process
PID=$(pgrep -f "app.py")
if [ ! -z "$PID" ]; then
  echo "Stopping previous version running with PID: $PID"
  kill $PID
  # Add a small delay to allow the port to be released
  sleep 2
fi

# Start the new application in the background, making it immune to Jenkins's process killer 🛡️
echo "Starting new version of the application..."
BUILD_ID=dontKillMe nohup python3 app.py > app.log 2>&1 &

echo "Deployment complete."