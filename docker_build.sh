#!/bin/sh
#
docker build -t zergity/ndrw:mvp -f Dockerfile.alpine . --build-arg SSH_PRIVATE_KEY="$(<~/.ssh/id_rsa)"
