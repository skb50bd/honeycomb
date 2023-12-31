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
- [Flood]() - Web UI for qBittorrent
- [Speedtest](https://openspeedtest.com/selfhosted-speedtest) - OpenSpeedTest Server