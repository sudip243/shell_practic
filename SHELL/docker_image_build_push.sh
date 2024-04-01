#! /bin/bash
profile="default"
buildTag="shellscript:latest"
aws ecr get-login-password --region us-east-1 --profile "${profile}" | docker login --username AWS --password-stdin 770766657353.dkr.ecr.us-east-1.amazonaws.com
docker build -t "${buildTag}" .
docker tag shellscript:latest 770766657353.dkr.ecr.us-east-1.amazonaws.com/${buildTag}
docker push 770766657353.dkr.ecr.us-east-1.amazonaws.com/${buildTag}