#!/bin/bash
echo "Starting deployment script..."

# Find and kill the old running process
PID=$(pgrep -f "app.py")
if [ ! -z "$PID" ]; then
  echo "Stopping previous version running with PID: $PID"
  kill $PID
fi

# Start the new application in the background
echo "Starting new version of the application..."
nohup python3 app.py > app.log 2>&1 &

echo "Deployment complete."