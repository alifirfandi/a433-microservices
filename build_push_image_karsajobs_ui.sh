#! /bin/bash

# build Docker image with tag
docker build -t karsajobs-ui:v1 .

# see local docker images
docker images

# change tag
docker tag karsajobs-ui:v1 alif1811/karsajobs-ui:v1

# login dockerhub
echo $PASSWORD_DOCKER_HUB | docker login -u alif1811 --password-stdin

# push image
docker push alif1811/karsajobs-ui:v1
