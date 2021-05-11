#!/bin/bash

sudo touch /etc/logrotate.d/docker-container

echo -e '/var/lib/docker/containers/*/*.log {
  rotate 7
  daily
  compress
  missingok
  delaycompress
  copytruncate
}' > /etc/logrotate.d/docker-container

logrotate -fv /etc/logrotate.d/docker-container
