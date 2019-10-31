#!/usr/bin/env bash

# terminate all running instances of polybar
killall -q polybar

# wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
echo "---" | tee -a /tmp/polytopbar.log
polybar topbar -r >>/tmp/polytopbar.log 2>&1 &

echo "Bar launched..."
