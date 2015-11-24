#!/bin/bash
java -Xmx1024M -jar lib/ace.jar start &

tail -F logs/server.log
