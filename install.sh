#! /bin/sh

# exit if a command fails
set -e


apt-get update

# install s3 tools
apt-get install -y python python-pip curl
pip install awscli

# install go-cron
curl -L --insecure https://github.com/odise/go-cron/releases/download/v0.0.7/go-cron-linux.gz | zcat > /usr/local/bin/go-cron
chmod u+x /usr/local/bin/go-cron

# make backup directory
mkdir /backup
