#!/bin/bash
curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh
sudo bash add-monitoring-agent-repo.sh --also-install
sudo systemctl enable stackdriver-agent
sudo systemctl start stackdriver-agent
