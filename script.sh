#!/bin/bash

var=$(python --version 2>&1)
first=${var:7:1}
echo "$first"
if which python </dev/null
  then
	sudo apt-get install python
fi
if [ $first -eq 2 ]; then
	sudo python -m SimpleHTTPServer 8080
elif [ $first -eq 3]; then
	sudo python -m http.server 8080
fi
