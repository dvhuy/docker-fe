#!/usr/bin/env bash

function runByEnv()
{
  printf "Prepare to run the app at ${WARN}${ENV}${NC} environment.\n"
  # stop all then run by ENV
  stopAll && docker-compose -f $DOCKER_COMPOSE_FILE_PATH_BY_ENV up --force-recreate --remove-orphans
}

runByEnv