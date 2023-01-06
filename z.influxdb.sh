#!/usr/bin/env bash

#$1 create/c or delete/d

if [ "$1" == "delete" ] || [ "$1" == "d" ]; then   
    echo kubectl delete -f influxdb.yaml
    kubectl delete -f influxdb.yaml
else
    echo kubectl create -f influxdb.yaml
    kubectl create -f influxdb.yaml
fi