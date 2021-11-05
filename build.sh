#! /bin/bash
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o nsq_exporter .
docker build -t nsq_exporter .
#rm -f tool-encrypt
#docker run -p 9413:9413 tool-encrypt



