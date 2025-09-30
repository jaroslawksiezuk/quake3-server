# Quake 3 Arena in Docker

This repository allows you to run a customizable **Quake 3 Arena** server inside a Docker container and deploy to Dokku.

It is based on [wokoman/quake3-osp-server](https://hub.docker.com/r/wokoman/quake3-osp-server).

## Features

- Run a dedicated Quake 3 Arena server with minimal setup  
- Deployment via **Dokku** using a simple `deploy.sh` script  
- Configuration with `.env` file  
- Easy customization of Quake 3 Arena server settings (`lanwarig.cfg`)  
- Based on the **OSP mod** 

## Requirements

### A valid `.env` file with the following variables:

```env
DOCKER_IMAGE=myrepo/quake3-server
APP_NAME=quake3-server
DOKKU_HOST=dokku@dokku.local
```

### Quake 3 Arena Game Data

To run the server, you must provide the original **Quake 3 Arena game data files**.  
These files are **not included** in this repository for legal reasons.

Place the following files in the `baseq3` directory:

- `pak0.pk3`
- Any additional `.pk3` files (optional – custom maps, mods, textures, etc.)

Without `pak0.pk3`, the server will not start.

## Deployment (Dokku)

You can deploy the server with a single command using the provided deploy.sh script.

```bash
./deploy.sh
```

The script uses the values from your .env file to build and deploy the Docker image on Dokku.

## Server Configuration

Server configuration is located in `lanwarig.cfg.example`.

To customize it, copy the example file:

```bash
cp lanwarig.cfg.example lanwarig.cfg
```

Edit `lanwarig.cfg` with your preferred settings.

Redeploy or restart the server.
