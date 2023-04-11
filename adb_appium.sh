#!/bin/bash

device=$(adb devices | awk 'NR==2{print $1}')
port=5555
output=$(adb shell netstat -tln | grep ":$port")

if [ "$output" == "" ]; then
	    adb tcpip $port
	        echo "Port $port opened."
	else
		    echo "Port $port is already open."
fi
