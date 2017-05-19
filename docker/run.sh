#!/bin/bash

sed -i -e "s/{{listen_address}}/$POD_IP/g" /cassandra/conf/cassandra.yaml
sed -i -e "s/{{rpc_address}}/$POD_IP/g" /cassandra/conf/cassandra.yaml

cd /cassandra/bin

exec ./cassandra -f
