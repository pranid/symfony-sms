#!/bin/bash

set -e

SERVICE=${2:-php}

case "$1" in
  build)
    docker-compose build
    ;;
  up)
    docker-compose up -d
    ;;
  down)
    docker-compose down
    ;;
  bash)
    docker-compose exec "$SERVICE" bash
    ;;
  upbuild)
    docker-compose build
    docker-compose up -d
    docker-compose exec php composer update
    ;;
  *)
    echo "Usage: $0 {build|up|down|bash [service]|upbuild}"
    exit 1
esac
