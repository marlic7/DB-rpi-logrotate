#!/bin/bash
set -e

TAG='3.9.1-1'
IMAGE_NAME='rpi-logrotate'
GIT_SHA=$(git rev-parse HEAD)
BUILD_FROM="${USER}/$(hostname)"

docker build --build-arg GIT_SHA=${GIT_SHA} \
             --build-arg BUILD_FROM=${BUILD_FROM} \
             -t $IMAGE_NAME:$TAG .

echo "###"
echo "Tag and push image to repo manualy:"
echo "docker tag ${IMAGE_NAME}:${TAG} ${DOCKER_REG_URL}/${IMAGE_NAME}:${TAG}"
echo "docker tag ${DOCKER_REG_URL}/${IMAGE_NAME}:${TAG} ${DOCKER_REG_URL}/${IMAGE_NAME}:latest"
echo "docker push ${DOCKER_REG_URL}/${IMAGE_NAME}"
