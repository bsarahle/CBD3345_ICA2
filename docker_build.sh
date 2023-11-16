#!/bin/bash

# Variables
IMAGE_NAME="custom-image-name" # Replace with your desired image name
DOCKERFILE_PATH="path_to_your_Dockerfile" # Replace with the path to your Dockerfile

# Build the Docker image
docker build -t $IMAGE_NAME -f $DOCKERFILE_PATH .

# Optionally, push the image to a registry
# docker push $IMAGE_NAME
