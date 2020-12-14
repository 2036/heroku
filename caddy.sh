
install -d /usr/local/etc/caddy
cat << EOF > /usr/local/etc/caddy/caddy.json
{
  "run_type": "server",
  "local_addr": "127.0.0.1",
  "local_port": $PORT,
  "remote_addr": "github.com",
  "remote_port": 443,
  "log_level": 3,
  "password": [
    "helloworld"
  ],
  "ssl": {
    "fallback_port": 1234
  },
  "transport_plugin": {
    "enabled": true,
    "type": "plaintext"
  },
  "websocket": {
    "enabled": true,
    "path": "/",
    "host": ""
  },
  "router": {
    "enabled": false
  }
}
EOF


/caddy -config /usr/local/etc/caddy/caddy.json
