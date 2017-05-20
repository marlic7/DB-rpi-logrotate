#!/bin/bash
set -e

TAG='3.9.1-2'
IMAGE_NAME='rpi-logrotate'

docker build -t ${IMAGE_NAME}:${TAG} .
