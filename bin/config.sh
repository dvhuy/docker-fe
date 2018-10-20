#!/usr/bin/env bash

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37


# COLOR
INFO='\033[0;35m'
WARN='\033[0;31m'
DEBUG='\033[0;37m'
NC='\033[0m' # No Color

# Show hello message
printf "**${INFO}Bash Shell${NC}**\n"

## PATHS

# Root dir
ROOT_DIR='./'

# Docker dir path
DOCKER_DIR_PATH=$ROOT_DIR'docker/'

# Dockerfiles path
DOCKERFILES_PATH=$DOCKER_DIR_PATH'Dockerfiles/'

# Docker Compose files path
DOCKER_COMPOSE_FILE_PATH=$DOCKER_DIR_PATH'docker-compose-files/'

# Source path
SOURCES_PATH=$ROOT_DIR'sources/'

# r: run, b: build, d: deploy
MODE='r'
# 'development' | 'testing' | 'staging' | 'production': 
# development' is default
ENV='development'
# For rebuild
BUILD_ALL=false
# For deploy