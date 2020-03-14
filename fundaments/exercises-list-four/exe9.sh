#!/bin/sh
 
# -q quiet
# -c nb of pings to perform
 
while true
do 
    let cont++
    # O IP sera inserido por paramentro para uma maior flexibilidade no script
    ping -c 3 $1 
    
    if [ $? -eq 0 ] ; then
        echo "Deu certo $cont";
    exit 0

    fi
done

exit 0