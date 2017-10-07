#!/bin/bash
docker-compose build --force-rm

docker run -dti --name rrricanesdata -p 8787:8787 rrricanesdata_rrricanesdata

$SHELL
