#!/bin/bash

# Authenticate with GHCR using the provided PAT
echo "${GHCR_PAT}" | docker login ghcr.io -u "${GITHUB_ACTOR}" --password-stdin

# Pull the Docker image
docker pull ghcr.io/bsarahle/cbd3345_ica2/python-app:latest

# Run Docker Container with Tests and save output
docker run --rm ghcr.io/bsarahle/cbd3345_ica2/python-app:latest python -m unittest test_app.py > test_output.txt 2>&1

# Upload Test Output as an artifact
echo "Uploading test output as an artifact..."
echo "::set-output name=test_output_file::test_output.txt"
