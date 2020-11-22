#!/bin/bash

echo 'Running the server'

cd /app
yarn
yarn lerna bootstrap
yarn build

cd packages/server
yarn pm2 install typescript
cd ../..

yarn start
