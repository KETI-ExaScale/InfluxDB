# KETI-ExaScale InfluxDB
## Introduction of KETI-ExaScale InfluxDB
InfluxDB Yaml for KETI-ExaScale Platform

## Contents
[1. Requirment](#requirement)

[2. How to Install](#how-to-install)

[3. Install Check](#install-check)

[4. Governance](#governance)
## Requirement
> Kubernetes <= 1.24

> KETI-ExaScale GPU-Scheduler

> KETI-ExaScale GPU-Metric-Collector

> KETI-ExaScale GPU-Device-Plugin
## How to Install
NFS

    $ kubectl apply -f influxnfs.yaml
Non NFS

    $ kubectl apply -f influxpv.yaml
    $ kubectl apply -f influxdb.yaml
## Install Check

    $ kubectl get pods -A
    NAMESPACE     NAME                                  READY   STATUS      RESTARTS       AGE
    gpu           influxdb-0                            1/1     Running     0              21s

    $ kubectl get pvc -A
    NAMESPACE   NAME                  STATUS   VOLUME     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
    gpu         influxdb-influxdb-0   Bound    influxdb   2Gi        RWX                           21s

    $ kubectl get pv -A
    NAME       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                     STORAGECLASS   REASON   AGE
    influxdb   2Gi        RWX            Retain           Bound    gpu/influxdb-influxdb-0                           21s
