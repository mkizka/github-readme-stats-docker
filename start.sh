#!/bin/sh

git clone https://github.com/anuraghazra/github-readme-stats.git
cd github-readme-stats
npm i express morgan
mv ../server.js .
node server.js
