#!/bin/bash

$replicator_key = "<PRIVATE_KEY>"

docker stop replicator
docker rm replicator
docker run -d --name replicator --network host -v $PWD:/root/.dfmsr:rw proximax/sirius-storage-replicator:v0.6.3 dfms -k $replicator_key
docker exec replicator dfms contract accepting