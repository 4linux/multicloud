#!/bin/bash

# Configura ambiente de Logs
curl -sSO https://dl.google.com/cloudagents/add-logging-agent-repo.sh
sudo bash add-logging-agent-repo.sh --also-install

sudo systemctl start google-fluentd
sudo systemctl enable google-fluentd
