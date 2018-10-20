#!/usr/bin/env bash

# Re-build images
function buildAllImages()
{
  local dockerComposeCommonPath=$DOCKER_DIR_PATH'/docker-compose.common.yml';
  docker-compose -f $dockerComposeCommonPath up --build --no-start --force-recreate --remove-orphans
}

# Re-build images base on ENV
function buildImagesByMode()
{
  docker-compose -f $DOCKER_COMPOSE_FILE_PATH_BY_ENV up --build --no-start --force-recreate --remove-orphans
}

function build() {
  if [ $BUILD_ALL ]; then
    buildAllImages
  else
    buildImagesByMode
  fi
}

build
exit 1