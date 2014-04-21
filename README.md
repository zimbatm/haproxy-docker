Docker + HAProxy
===================

A simple Dockerfile to build and install [HAProxy](http://haproxy.1wt.eu/).

The end goal is to have HAProxy automatically configure depending on the
linked containers.

Status: WIP
-----------

Usage
-----

```
docker run -t -i --rm --name haproxy --link camlistore:camlistore zimbatm/haproxy
```

TODO
----

* SSL setup
* Config generation

