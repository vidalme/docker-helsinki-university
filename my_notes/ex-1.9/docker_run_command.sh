#!/bin/bash
docker run -v "$(pwd)/text.log:/usr/src/app/text.log" -ti devopsdockeruh/simple-web-service
