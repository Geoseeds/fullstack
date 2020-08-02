# fullstack
fullstack demo

## FE
vue.js

## BE
python
ML stuff

## Infra
digitalocean
remote docker provisioning

# Usage

## Requirements
```sh
npm install -g parcel-bundler
```

## Build

```sh
yarn build
```

## Run

```sh
yarn local
```

## Deploy

Assumptions
- you have a `docker context ls` called `geocloud` pointing to remote docker host
- docker image must be built on remote

```sh
yarn deploy
```
