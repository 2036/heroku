
install -d /usr/local/etc/caddy
cat << EOF > /usr/local/etc/caddy/caddy.json
{
    "log": {
        "loglevel": "none"
    },
    "inbounds": [
        {
            "port": $PORT,
            "protocol": "vless",
            "settings": {
                "clients": [
                    {
                        "id": "fae1701e-ee35-4a95-bc66-2bebf9a63944"
                    }
                ],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
EOF


/caddy -config /usr/local/etc/caddy/caddy.json
