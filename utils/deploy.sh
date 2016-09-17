#!/bin/bash

RSH_STRING="/usr/bin/sshpass -p ${DEPLOY_PASSWORD} ssh -o StrictHostKeyChecking=no -l ${DEPLOY_USER}"

DEST=${TRAVIS_BRANCH:-test}

rsync -rav --delete --rsh="${RSH_STRING}" output/ russianfedora.pro:~/"${DEST}"
