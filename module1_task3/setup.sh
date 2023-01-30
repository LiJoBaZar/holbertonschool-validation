#!/usr/bin/env bash

# Update and install packages
apt-get update && apt-get install -y hugo make

# make
make build