#!/bin/bash

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

docker-compose --project-directory $parent_path run --rm -v $(pwd):/tmp/project jooby-cli
