#!/usr/bin/env bash

npm install
npm run build

docker build \
    --file docker/Dockerfile \
    --tag ursinbrunner/proton-inference-frontend:latest \
    .

docker push ursinbrunner/proton-inference-frontend:latest
