#!/usr/bin/env bash

# Use https://hub.docker.com/r/robertodr/maturin to deploy

docker run \
       --env MATURIN_PASSWORD="$MATURIN_PASSWORD" \
       --rm \
       -v "$(pwd)":/io \
       ghcr.io/pyo3/maturin \
       publish \
       --interpreter python3.8 python3.9 python3.10 python3.11 \
       --username nielstron \
       --password "$MATURIN_PASSWORD" \
       --skip-existing