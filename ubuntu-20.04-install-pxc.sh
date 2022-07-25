#!/bin/bash

set -xe

apt-get update -y

apt install wget gnupg2 lsb-release curl -y

wget https://repo.percona.com/apt/percona-release_latest.generic_all.deb

dpkg -i percona-release_latest.generic_all.deb

apt update -y

percona-release setup pxc80

apt install -y percona-xtradb-cluster -y
