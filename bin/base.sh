#!/usr/bin/env bash
source ./bin/config.sh

# Show hello message
# printf "**${INFO}Base things${NC}**\n"
while [ "$1" != "" ]; do
  case $1 in
    -m) shift
        MODE=$1
        ;;
    -e) shift
        ENV=$1
        ;;
    -r) shift
        if [ "$1" == "all" ]
        then
          BUILD_ALL=true;
        fi
        ;;
  esac
  shift
done
# Check get/set argument is ready!
# printf "MODE is ${DEBUG}${MODE}${NC}, ENV is ${ENV}, BUILD_ALL: ${BUILD_ALL} \n"

# Set docker-compose file path
DOCKER_COMPOSE_FILE_PATH_BY_ENV='';
function getCurrentDockerComposeFilePath() {
  DOCKER_COMPOSE_FILE_PATH_BY_ENV=$DOCKER_COMPOSE_FILE_PATH$ENV'/docker-compose.yml';
}

getCurrentDockerComposeFilePath
# Check set compose path file is ready!
# echo "docker compose path file is ${DOCKER_COMPOSE_FILE_PATH_BY_ENV}";

# Shop all running container...
function stopAll()
{
  printf "Prepare to ${WARN}STOP${NC} all running container...\n"
  docker-compose -f $DOCKER_COMPOSE_FILE_PATH_BY_ENV down
}
