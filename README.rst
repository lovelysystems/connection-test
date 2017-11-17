===========
Echo Server
===========

This is a simple echo server which will listen on the given TCP and/or UDP
ports. The executed command to build the response is `date` by default but it
can be easily configured by setting the environment variable.


Usage
=====

  $ docker run -ti --rm -p 5238:5238/udp -e "UDP_PORTS=5238" lovelysystems/connection-test

  $ docker run -ti --rm -p 5238:5238/udp -e "CMD=uptime" -e "TCP_PORTS=8080 9090" lovelysystems/connection-test


Configuration
=============

TCP_PORTS
---------

Defines the ports to listen on with TCP. The value is either a single port or
a space seperaterd list of ports.

UDP_PORTS
_________

Defines the port to listen on with UDP. The value is either a single port or
a space seperaterd list of ports.

CMD
---

The command to execute on each incoming line. by default it is set to `date`


