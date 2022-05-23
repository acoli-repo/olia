#!/bin/bash
MYHOME=`dirname $0`
java -Xmx5120m    -jar $MYHOME/lib/pellet-cli.jar "$@"

