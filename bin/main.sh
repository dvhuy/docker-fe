#!/usr/bin/env bash
source ./bin/base.sh

function main()
{
  # # r: run, b: build, d: deploy
  case $MODE in
    "b")
      printf "Prepare to build images ...\n"
      source ./bin/build.sh
    ;;
    "d")
      source ./bin/deploy.sh
    ;;
    *)
      printf "***Run, ${WARN}RUN${NC}, run ...***\n"
      source ./bin/run.sh
    ;;
  esac
}
main
printf "${INFO}DONE${NC}!!!\n"
exit 1