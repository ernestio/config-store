#!/usr/bin/env sh

echo "Waiting for NATS"
while ! echo exit | nc postgres 4222; do sleep 1; done

echo "Starting config-store"
/go/bin/config-store