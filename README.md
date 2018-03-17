# docker-dynamic-proxy

[![License](https://img.shields.io/github/license/querry43/docker-dynamic-proxy.svg)](LICENSE)
[![Automated Build](https://img.shields.io/docker/automated/qrry/dynamic-proxy.svg)](https://hub.docker.com/r/qrry/dynamic-proxy/)
[![Build Status](https://img.shields.io/docker/build/qrry/dynamic-proxy.svg)](https://hub.docker.com/r/qrry/dynamic-proxy/)


This container runs nginx and probes other containers for forwarding information.  If available, nginx is configured with a vhost to proxy to that container.

Containers need to define the following env variables:

```
VIRTUAL_HOST
PROXY_PORT
```

In addition, this container needs access to the docker socket to probe the other containers.

```
-v /var/run/docker.sock:/var/run/docker.sock:ro
```
