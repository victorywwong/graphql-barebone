#! /bin/bash
yarn build:server
heroku container:push barebone
heroku container:release barebone