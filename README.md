# webserver_mod_project
Personal modifications made to a web server.  

The only modified core source file is:  webserver_mod_project/webserver_<version>/src/connections.c

The only modified makefile is (to supporting OpenSSL library linking):  webserver_mod_project/webserver_<version>/src/Makefile.am

Test scripts and tools can be found under: webserver_mod_project/webserver_<version>/tests/mod_tests

The webserver config file to enable logging and the cgi module: webserver_mod_project/webserver_<version>/tests/mod_tests/webserverd.conf
Note: disable any other httpserver running as the webserver will try to bind to port 80.

The server documents e.g. static index html and a cgi script are under: /home/<user>/github/projects/webserver_mod_project/webserver_<version>/tests/mod_tests/docroot


# To build

```
cd webserver_mod_project/webserver_<version>
./configure
make
sudo make install #if you are modify webserver modules, the resultant shared libraries will need to be installed onto the host system.
```
