#!/bin/bash

# Login to Docker Hub
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS


# Stop and remove existing container if it exists
=======

docker stop react || true
docker rm react || true

# Build the Docker image
docker build -t react-ci/cd .

# Run the container
docker run -d -it --name react -p 80:80 react-ci/cd

# Tag the image with your Docker Hub repo
docker tag react-ci/cd jithu026/react-app:ci-cd

# Push the image to Docker Hub
docker push jithu026/react-app:ci-cd



