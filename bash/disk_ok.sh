#!/bin/bash

# Get root (/) disk usage percentage (strip % sign)
u=$(df -P / | awk 'NR==2{gsub("%","",$5);print $5}')

# If usage >= 80%, print ALERT, otherwise OK
[ "$u" -ge 80 ] && echo "ALERT: disk ${u}%" || echo "OK: disk ${u}%"
