#!/bin/bash

set -xe

apt-get update -y

sudo apt install gnupg2 curl -y

wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb

sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb

apt-get update -y

sudo percona-release setup ps80

sudo apt install percona-server-server -y
