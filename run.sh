#!/bin/bash
java -Xmx256M -jar lib/ace.jar start &

tail -F logs/server.log
