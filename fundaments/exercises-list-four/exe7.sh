#!/bin/sh

# conf_rede IP MASCARA GATEWAY DNS1 DNS2
conf_rede () {

    # VALIDACAO DE PARAMS - NAO FUNCIONANDO
     if [ ! $1 ] || [ ! $2 ] || [ ! $3 ] || [ ! $4 ]   ; then
         echo "Alguns do parametros é vazio/nulo"
         exit 0
     fi
    
    cd $HOME
    pwd

    cd etc/netplan

    if [ -f config.yaml ] ; then
        rm -R config.yaml
    fi

    ls

    touch config.yaml
    echo "network:
            version: 2
            ethernets: 
                enp0s3:
                    addresses: [$1]
                    dhcp4: false
                    gateway4: $2
                    nameservers:
                        addresses: [$3,$4]
                    " >> config.yaml
    
    netplan generate
    netplan apply
}

conf_rede $1 $2 $3 $4

exit 0
