# docker-vulcand
A quick docker-compose file to launch Vulcand Proxy in a container. This was done as part of
a blog post for the Skookum blog so that folks could play around with Vulcand easily to see
how incredibly awesome it is.

## Requirements
Docker 1.11 or later

## Fire it up

1) `docker-compose up`
2) `./vulcand-config.sh`

The config file will add a frontend that points to a backend with one server. The server is the local "test server" in the docker-compose.yml file. Once the containers are up, you can type

```
curl -i -H "Content-Type: application/json" http://localhost:8181/dagoogs\?q\=vulcand
```

And see the request logged out by Test Server.


