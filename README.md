# HoneyComb

It's a single server docker-compose setup for a few services that one might need for their home server. It's a work in progress and I'm adding more services as I need them.

## Requirements

- A Linux Host (Ubuntu)
- Docker
- Public IP Address
- Domain Name

## Services

- [Traefik](https://traefik.io/) - Reverse Proxy
- [Portainer](https://www.portainer.io/) - Docker Management UI
- [qBittorrent](https://www.qbittorrent.org/) - Torrent Client
- [Watchtower](https://github.com/containrrr/watchtower) - Automatic Docker Image Updater [Not Implemented Yet]
- [Plex](https://www.plex.tv/) - Media Server
- [Speedtest](https://openspeedtest.com/selfhosted-speedtest) - OpenSpeedTest Server
- [Registry](https://docs.docker.com/registry/) - Docker Image Registry
- [MinIO](https://min.io/) - Object Storage Server

## Setup

### 1. Clone the repository

```bash
git clone https://github.com/skb50bd/honeycomb.git
```

### 2. Create a `.env` file

```bash
cd honeycomb
cp .env.template .env
```

### 3. Edit the `.env` file

```bash
nano .env
```

### 4. Create a htpasswd file

```bash
docker run --rm --entrypoint htpasswd httpd:2 -Bbn your_username your_password > auth/htpasswd
```

> the file needs to correspond to the `HTPASSWD_PATH` variable in the `.env` file. So make necessary file movements if needed.

### 5. Obtain a Cloudflare API Token

- Go to [Cloudflare](https://dash.cloudflare.com/profile/api-tokens) and create a new API Token.
- Give it the following permissions:
  - Zone - Zone - Read
  - Zone - DNS - Edit
  > Include appropriate zones for the above permissions.
- Copy the API Token and paste it in the `.env` file.

### 6. Run the setup script

```bash
sudo ./setup.sh
```

### 7. Add the following DNS records

| Type | Name | Content | Proxy Status |
| ---- | ---- | ------- | ------------ |
| A | @ | <-Your Public IP Address-> | DNS Only |
| A | * | <-Your Public IP Address-> | DNS Only |

### 8. Port Forwarding

Forward the following ports to your server (in your router):

| Protocol | External Port | Internal IP |
| -------- | ---- | ------- |
| TCP | 80 | <-Private IP of the Host Device> |
| TCP | 443 | <-Private IP of the Host Device> |

### 9. Start the services

```bash
docker-compose up -d
```

> You will need to modify steps 4, 5 and 6 if you are not using Cloudflare.
