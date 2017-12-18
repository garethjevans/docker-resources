#!/bin/sh

VERSION=$1
echo "Tagging at ${VERSION}"

if [ -z ${VERSION} ]
then
    echo "usage: ./tag_base_image.sh <version>"
    exit 1
fi

cd ..
cd docker-jenkinsslave-alpine
git pull
git tag ${VERSION} 
git push --tags

cd ..
cd docker-jenkinsslave-ubuntu
git pull
git tag ${VERSION} 
git push --tags

