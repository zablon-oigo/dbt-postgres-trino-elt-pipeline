#!/bin/bash

set -e

echo "Running Superset database migrations..."

superset db upgrade

echo "Creating Superset admin user..."

superset fab create-admin \
    --username "$SUPERSET_ADMIN" \
    --firstname Superset \
    --lastname Admin \
    --email admin@example.com \
    --password "$SUPERSET_ADMIN_PASSWORD" || true

echo "Initializing Superset..."

superset init

echo "Starting Superset..."

exec superset run -h 0.0.0.0 -p 8088