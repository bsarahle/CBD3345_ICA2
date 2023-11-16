#!/bin/bash

# Variables
DOCKERFILE_PATH="Dockerfile"
IMAGE_NAME="python-app"
TAG="latest"

# Build Docker image
docker build -f "$DOCKERFILE_PATH" -t "$IMAGE_NAME:$TAG" .

# Push the Docker image to your self-hosted registry or Docker Hub
docker push "$IMAGE_NAME:$TAG"
