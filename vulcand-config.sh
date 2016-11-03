#!/bin/bash

docker-compose exec vulcand vctl backend upsert -id google-backend --vulcan=http://172.24.0.2:8182
docker-compose exec vulcand vctl server upsert -id google-server1 -b google-backend -url http://test_server:1080 --vulcan=http://172.24.0.2:8182
docker-compose exec vulcand vctl frontend upsert -id google-frontend -b google-backend -route='Path("/dagoogs")' --vulcan=http://172.24.0.2:8182
docker-compose exec vulcand vctl rewrite upsert -f google-frontend -id r1 --regexp="dagoogs" --replacement='$1'

docker-compose exec vulcand vctl frontend ls --vulcan=http://172.24.0.2:8182
docker-compose exec vulcand vctl frontend show -id google-frontend --vulcan=http://172.24.0.2:8182
