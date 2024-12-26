#!/bin/bash
kubectl apply -f green-deployment.yaml
kubectl set image deployment/aggregator-service-blue aggregator-service=hasaliit/aggregator-service:${GITHUB_SHA} --record

