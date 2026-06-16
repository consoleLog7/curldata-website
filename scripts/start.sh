#!/bin/bash
set -e

APP_DIR="/home/ec2-user/curldata-website"
IMAGE_NAME="curldata-website"
CONTAINER_NAME="curldata-website"
HOST_PORT="80"
CONTAINER_PORT="80"

cd "$APP_DIR"

echo "Stopping existing container if it exists..."
docker stop "$CONTAINER_NAME" || true

echo "Removing existing container if it exists..."
docker rm "$CONTAINER_NAME" || true

echo "Building Docker image..."
docker build -t "$IMAGE_NAME:latest" .

echo "Starting new container..."
docker run -d \
  --name "$CONTAINER_NAME" \
  --restart unless-stopped \
  -p "$HOST_PORT:$CONTAINER_PORT" \
  "$IMAGE_NAME:latest"

echo "Deployment complete. Running containers:"
docker ps
