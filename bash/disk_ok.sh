#!/bin/bash
u=$(df -P / | awk 'NR==2{gsub("%","",$5);print $5}')
[ "$u" -ge 80 ] && echo "ALERT: disk ${u}%" || echo "OK: disk ${u}%"

