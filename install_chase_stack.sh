#!/usr/bin/env bash
set -e
echo "Starting deployment..."
terraform -chdir=terraform init
terraform -chdir=terraform validate
docker build -f docker/Dockerfile -t chase-web:local .
echo "Basic deployment validation complete."
