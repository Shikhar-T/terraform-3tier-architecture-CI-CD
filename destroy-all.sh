#!/bin/bash

set -e

echo "🚀 Starting FULL destroy..."

echo "=========================="
echo "🧨 Destroying INFRA first"
echo "=========================="

cd infra
terraform init
terraform destroy -auto-approve

echo "=========================="
echo "🧨 Destroying BACKEND"
echo "=========================="

cd ../bootstrap-backend
terraform init
terraform destroy -auto-approve

echo "=========================="
echo "✅ ALL RESOURCES DELETED"
echo "=========================="

