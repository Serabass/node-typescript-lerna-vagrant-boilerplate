#!/bin/bash

echo 'Running the server'

cd /app
yarn
yarn lerna bootstrap
yarn lerna build

cd packages/server
yarn pm2 install typescript
cd ../..

yarn start
