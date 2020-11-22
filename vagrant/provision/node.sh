#!/bin/bash

NODE_VERSION=14.15.1
NPM_REGISTRY=http://192.168.1.3:4873

git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
echo "source ~/.nvm/nvm.sh" >> ~/.profile
source ~/.profile

nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}

echo "cd /app" >> ~/.profile
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install yarn -y

yarn config set registry ${NPM_REGISTRY}
npm config set registry ${NPM_REGISTRY}

yarn global add lerna nodemon ts-node rimraf --registry=${NPM_REGISTRY}

echo ""
echo "Node installation done, have a nice day :-)!"
