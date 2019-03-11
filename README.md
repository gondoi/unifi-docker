# UniFi controller in docker

This repo contains a `Dockerfile` that builds an automatic `docker` image with
each new commit.

Current version of UniFi Controller: v5.10.19

## TL;DR

Start up the container and mount the volume on the host.

    docker run -d -p 8443:8443 -p 8080:8080 -p 8880:8880 -v /path/to/host/volume:/usr/lib/unifi/data --name unifi gondoi/unifi

If you wanna download from Quay.io instead, you can pull from there too.

    docker pull quay.io/gondoi/unifi

## Settings

A default settings file will be created in your host volume in `settings.properties`.
In the container, this will be mapped to `/usr/lib/unifi/data/settings.properties`.

## Notes

UniFi requires that it manages the running instance of MongoDB. To run your own,
you will need to proxy your requests somehow. Be careful though, because
according to forum posts, UniFi will connect and issue a shutdown at startup
to ensure it can start it's own instance of MongoDB.

## Ports

To use the running UniFi intance the following ports need to be open.

* 8443 - SSL web interface (self signed)
* 8080 - Web interface
* 8880 - Guest login interface
* 3478 - UDP - STUN controller port
