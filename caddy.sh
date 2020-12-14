
install -d /usr/local/etc/caddy
cat << EOF > /usr/local/etc/caddy/caddy.json
{
  "run_type": "server",
  "local_addr": "127.0.0.1",
  "local_port": $PORT,
  "remote_addr": "127.0.0.1",
  "remote_port": 80,
  "log_level": 5,
  "password": [
    "helloworld"
  ],
  "transport_plugin": {
    "enabled": true,
    "type": "plaintext"
  },
  "websocket": {
    "enabled": true
  },
  "router": {
    "enabled": false
  }
}
EOF


/caddy -config /usr/local/etc/caddy/caddy.json
