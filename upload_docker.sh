#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=tmorot/udacity:latest

# Step 2:  
# Authenticate & tag
docker login --username=tmorot --email=amroessameldin@gmail.com
docker tag udacity $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
