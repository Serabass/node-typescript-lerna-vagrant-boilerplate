#!/bin/bash

echo 'Running the server'

NPM_REGISTRY=http://192.168.1.3:4873

cd /app
yarn --registry=${NPM_REGISTRY}
yarn lerna bootstrap --registry=${NPM_REGISTRY}
yarn build

cd packages/server
yarn pm2 install typescript
cd ../..

yarn pm2 start
