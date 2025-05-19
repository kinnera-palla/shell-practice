!#/bin/bash

echo "all variables passed to script: $@:"
echo "number of variables: $#"
echo "script name: $0"
echo "current dir: $PWD"
echo "user runnins: $USER"
echo "Home dir: $HOME"
echo "PID of the script: $$"
sleep 10 &
echo "PID of lat sommand: $!"