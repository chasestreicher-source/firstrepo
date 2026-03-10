#!/usr/bin/env bash
echo "Running validation..."
terraform -chdir=terraform init -backend=false
terraform -chdir=terraform validate
docker build -f docker/Dockerfile -t chase-web:test .
echo "Validation complete"
