#! /bin/sh

set -e

[ ! -L /.sync ] && ln -sf /data /.sync

[ ! -f /data/sync.conf ] && cat > /data/sync.conf <<EOF
{
  "listening_port": 3369,
  "check_for_updates": false,
  "use_upnp": false,
  "webui": {
    "listen": "0.0.0.0:8888",
    "login": "admin",
    "password": "password"
  }
}
EOF

/rslsync --nodaemon --config /data/sync.conf
