@echo off

REM Authenticate with GHCR using the provided PAT
echo %GHCR_PAT% | docker login ghcr.io -u %GITHUB_ACTOR% --password-stdin

REM Pull the Docker image
docker pull ghcr.io/bsarahle/cbd3345_ica2/python-app:latest

REM Run Docker Container with Tests and save output
docker run --rm ghcr.io/bsarahle/cbd3345_ica2/python-app:latest python -m unittest test_app.py > test_output.txt 2>&1
