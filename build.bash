#!/usr/bin/env bash

set -e

DOCKER_CMD_BUILD="docker build --pull"
DOCKER_CMD_PUSH="docker push"
ORG_NAME="kamukirim"
REGISTRY_URL="ghcr.io"
GENERAL_TAG="latest"
BASE_TAG="${REGISTRY_URL}/${ORG_NAME}"

for image_group in $(ls -d */ | cut -f1 -d'/'); do
    for image_path in $(ls -d ${image_group}/*/); do
        dockerfile="${image_path}/Dockerfile"
        image_name="${image_path::-1}"
        image_name="$(echo ${image_name} | sed -r 's/\//-/g')"
        image_name="${BASE_TAG}/${image_name}:${GENERAL_TAG}"
        echo -e "\nBuilding => ${image_name}\n"
        ${DOCKER_CMD_BUILD} -t ${image_name} -f ${dockerfile} .
        if [ "$1" == "push" ]; then
            ${DOCKER_CMD_PUSH} ${image_name}
        fi
    done
done
