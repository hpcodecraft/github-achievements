#! /bin/sh

DIR=$(pwd)

# example how to run acha docker container with a private key
docker run \
  --rm \
  -p 8080:8080 \
  -v $DIR/ssh/acha_rsa:/root/.ssh/acha_rsa \
  -v $DIR/storage:/app/.acha \
  someteam/acha \
  --private-key /root/.ssh/acha_rsa
