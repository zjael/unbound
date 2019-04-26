#!/bin/bash
echo "$(date): Starting Unbound"
systemctl enable --now unbound

finish () {
    echo "$(date): Shutting down Wireguard"
    exit 0
}
trap finish SIGTERM SIGINT SIGQUIT

sleep infinity