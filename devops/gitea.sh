#!/bin/bash

set -e

sudo mkdir -p /var/lib/gitea

docker run -d --name=gitea -p 10022:22 -p 10080:3000 -v /var/lib/gitea:/data gitea/gitea:latest

