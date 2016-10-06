# docker-btsync

## Description

A Dockerfile for [Resilio Sync](https://www.resilio.com/individuals/). The default login is `admin` and the default password is `password`. These can be changed in `/data/sync.conf`.

## Volumes

### `/data`

Configuration files and state for BitTorrent Sync.

## Ports

### 3369/udp

Sync protocol UDP port.

### 8888

WebUI port.

