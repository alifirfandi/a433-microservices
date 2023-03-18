#! /bin/bash

# build Docker image with tag
docker build -t karsajobs:v1 .

# see local docker images
docker images

# change tag
docker tag karsajobs:v1 alif1811/karsajobs:v1

# login dockerhub
echo $PASSWORD_DOCKER_HUB | docker login -u alif1811 --password-stdin

# push image
docker push alif1811/karsajobs:v1
