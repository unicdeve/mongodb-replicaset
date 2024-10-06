#!/bin/bash

# Stop and remove existing containers
docker compose down -v

# Start the services
docker compose up -d

echo "Waiting for MongoDB instances to start..."
sleep 10

# Initialize the replica set
docker exec rs0_mongo1 /scripts/mongo-rs-init.sh
