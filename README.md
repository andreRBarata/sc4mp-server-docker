# sc4mp-server-docker

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Configuration and Usage](#configuration-and-usage)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Introduction
A dockerizer for the [SC4MP Server](https://github.com/kegsmr/sc4mp-server) for SimCity 4.

The server configurations are available in the form of environment variables.

## Prerequisites
Well docker and an internet connection, that's about it.

## Configuration and Usage

### Docker Commands

To run the sm4mp-server in a Docker container, you can use the following commands:

#### Pull the Docker Image
```bash
docker pull andrerbarata/sc4mp-server-docker:latest
```

#### Run the docker image
Before launching the container, create the following folders *_SC4MP* and *resources* on your host or in docker external volume. These folders will serve as storage for the server's assets during startup and provide access to server and configuration save files from outside the container. 

Additionally, place your *Plugins.zip* and *Regions.zip* within the *resources* folder, following a structure similar to the examples found [here](https://github.com/kegsmr/sc4mp-server/tree/main/resources).

Then run the following command:
```bash
docker run -d \
  -e MAX_REQUEST_THREADS=<value> \
  -e REQUEST_LIMIT=<value> \
  -e BACKUP_SERVER_ON_STARTUP=<value> \
  -e SERVER_BACKUP_INTERVAL=<value> \
  -e MAX_SAVEGAME_BACKUPS=<value> \
  -e HOST=<value> \
  -e DISCOVERABLE=<value> \
  -e PORT=<value> \
  -e GODMODE_FILTER=<value> \
  -e CLAIM_DURATION=<value> \
  -e MAX_REGION_CLAIMS=<value> \
  -e USER_PLUGINS=<value> \
  -e PRIVATE=<value> \
  -e PASSWORD_ENABLED=<value> \
  -e PASSWORD=<value> \
  -e MAX_IP_USERS=<value> \
  -e SERVER_NAME=<value> \
  -e SERVER_URL=<value> \
  -e SERVER_ID=<value> \
  -e SERVER_DESCRIPTION=<value> \
  -e AUTO_UPDATE=<value> \
  -e CONFIG_AUTO_UPDATE=<value> \
  -v <path of _SC4MP>:/server/_SC4MP \
  -v <path of resources>:/server/resources \
  -p 7240:7240 \
  andrerbarata/sc4mp-server-docker:latest
```

| Variable                 | Description                                                        | Default Value                        |
|--------------------------|--------------------------------------------------------------------|--------------------------------------|
| MAX_REQUEST_THREADS      | Maximum request threads for the server                             | 200                                  |
| REQUEST_LIMIT            | Request limit for the server                                       | 60                                   |
| BACKUP_SERVER_ON_STARTUP | Enable server backup on startup                                    | True                                 |
| SERVER_BACKUP_INTERVAL   | Interval for server backups (in hours)                             | 6                                    |
| MAX_SAVEGAME_BACKUPS     | Maximum savegame backups to retain                                 | 5                                    |
| HOST                     | Host address for the server                                        | 0.0.0.0                              |
| DISCOVERABLE             | Make the server discoverable                                       | True                                 |
| PORT                     | Server port                                                        | 7240                                 |
| GODMODE_FILTER           | Enable Godmode filter for the server                               | True                                 |
| CLAIM_DURATION           | Duration of claims (in days)                                       | 30                                   |
| MAX_REGION_CLAIMS        | Maximum region claims allowed                                      | 1                                    |
| USER_PLUGINS             | Allow User plugins                                                 | False                                |
| PRIVATE                  | Set the server as private                                          | False                                |
| PASSWORD_ENABLED         | Enable password protection                                         | False                                |
| PASSWORD                 | Password for server access (if enabled)                            | maxis2003                            |
| MAX_IP_USERS             | Maximum users allowed from the same IP                             | 3                                    |
| SERVER_NAME              | Name of the SimCity 4 server                                       | &lt;username&gt; on &lt;hostname&gt; |
| SERVER_URL               | URL for the server's website or info                               | www.sc4mp.org                        |
| SERVER_ID                | Server ID or unique identifier                                     | &lt;randomly generated&gt;           |
| SERVER_DESCRIPTION       | Description of the SimCity 4 server                                | Join and build your city.\n\nRules:\n- Feed the llamas\n- Balance your budget\n- Do uncle Vinny some favors |
| AUTO_UPDATE              | Enable auto-updates for the server when restarted                  | True                                 |
| CONFIG_AUTO_UPDATE       | Enable creation of config file from env variables on server start  | True                                 |

#### Manual server update
To update the server run the following command:
```bash
docker exec -it <container name> sh -c "/update.sh"
```

## Troubleshooting

If you encounter any issues while running the server in a Docker container, try the following:

**Check Docker Logs:** Start by examining the Docker container logs using the following command:
```bash
   docker logs <container_name_or_id>
```

Replace <container_name_or_id> with the actual name or ID of your running SimCity 4 server container. The logs may provide valuable information about any errors or issues.

**Review Configuration:** Double-check your environment variables and configuration settings to ensure they are correctly set.

**Network and Firewall Settings:** Ensure that network and firewall settings allow traffic to and from the container. Ports specified in your configuration should be open and accessible.

**Container Status:** Verify the status of the container using the docker ps command. Ensure that the container is running and hasn't exited unexpectedly.

If none of these work create a github issue and i'll do my best to help!

## Contributing
To contribute simply fork this repo and make a pull request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

