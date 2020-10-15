#!/bin/bash
# Set the umask so group has write access
umask 0002

# Switch to /tmp so it creates its temp directories there
# Otherwise it tries the /src folder which it does not have write access to
cd /tmp
while true
do
	echo "Sleeping ${DELAY} seconds"
	sleep ${DELAY}
	/src/unrarall -v --full-path --clean=${CLEANMODE} /input
done
