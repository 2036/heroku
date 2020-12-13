
install -d /usr/local/etc/caddy
cat << EOF > /usr/local/etc/caddy/caddy.json
{
    "inbounds": [
        {
            "port": $PORT,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "fae1701e-ee35-4a95-bc66-2bebf9a63944",
                        "alterId": 4
                    }
                ],
                "disableInsecureEncryption": true
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
