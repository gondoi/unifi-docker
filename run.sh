#!/bin/bash
nice ionice -c2 /usr/bin/java -Xmx256M -jar lib/ace.jar start &

tail -F logs/server.log
