# sc4mp-server-docker

A dockerizer for the [SC4MP Server](https://github.com/kegsmr/sc4mp-server) for SimCIty 4.

The server configurations are available in the form of environment variables.
Add your Plugins.zip, Regions.zip and icon.ico to an external docker volume and mount it to the server container to allow for server updates and recover from backups.
