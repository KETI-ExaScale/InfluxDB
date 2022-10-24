# InfluxDB
## KETI-ExaScale InfluxDB 소개
KETI-ExaScale Platform의 Database

메트릭 저장을 위한 InfluxDB

## 목차
[1. 필요 환경](#필요-환경)

[2. 설치 방법](#설치-방법)

[3. 설치 확인](#설치-확인)

## 필요 환경
> Kubernetes <= 1.24

> KETI GPU-Scheduler

> KETI GPU-Metric-Collector

> KETI GPU-Device-Plugin
## 설치 방법
NFS 환경

    $ kubectl apply -f influxnfs.yaml
Host Path 환경

    $ kubectl apply -f influxpv.yaml
    $ kubectl apply -f influxdb.yaml

## 설치 확인
    $ kubectl get pods -A
    NAMESPACE     NAME                                  READY   STATUS      RESTARTS       AGE
    gpu           influxdb-0                            1/1     Running     0              21s

    $ kubectl get pvc -A
    NAMESPACE   NAME                  STATUS   VOLUME     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
    gpu         influxdb-influxdb-0   Bound    influxdb   2Gi        RWX                           21s

    $ kubectl get pv -A
    NAME       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                     STORAGECLASS   REASON   AGE
    influxdb   2Gi        RWX            Retain           Bound    gpu/influxdb-influxdb-0                           21s