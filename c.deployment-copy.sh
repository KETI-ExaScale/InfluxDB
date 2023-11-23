#!/usr/bin/env bash
#khg
dest_path="/root/workspace/deployments/influxdb"
password="ketilinux"
ip="10.0.5.62"

echo scp influxdb.yaml root@$ip:$dest_path copying...
sshpass -p $password scp -r influxdb.yaml root@$ip:$dest_path

echo scp influxnfs.yaml root@$ip:$dest_path copying...
sshpass -p $password scp -r influxnfs.yaml root@$ip:$dest_path
