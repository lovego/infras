#!/bin/bash

docker run \
  --volume=/var/lib/drone:/data \
  --env=DRONE_AGENTS_ENABLED=true \
  --env=DRONE_GITEA_SERVER='http://git.example.com:10080/' \
  --env=DRONE_GITEA_CLIENT_ID='febe4985-f49d-4b5c-a054-c3e83f9d3178' \
  --env=DRONE_GITEA_CLIENT_SECRET='EAB7p-ODPtHdKzdK95eQ55YcHZKwFbqkRDpNQwet1Wc=' \
  --env=DRONE_RPC_SECRET='4913fc9940aae0fd3dece7c405b2b6b8' \
  --env=DRONE_SERVER_HOST='drone.example.com:10081' \
  --env=DRONE_SERVER_PROTO='http' \
  --add-host='git.example.com:192.168.10.251' \
  --publish=10081:80 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1.3.1
