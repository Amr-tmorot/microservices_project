#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=tmorot/udacity:latest

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run prediction-pod --image=$dockerpath --port=80 --labels app=prediction-pod

# Step 3:
# List kubernetes pods
minikube kubectl get pods
# Step 4:
# Forward the container port to a host
minikube kubectl port-forward prediction-pod 8000:80
