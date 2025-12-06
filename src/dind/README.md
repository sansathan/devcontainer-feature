
# DIND (Docker-in-Docker) (dind)

Create child containers *inside* a container, independent from the host's docker instance. Installs Docker extension in the container along with needed CLIs.

## Example Usage

```json
"features": {
    "ghcr.io/sansathan/devcontainer-feature/dind:v1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Select or enter a Docker/Moby Engine version. (Availability can vary by OS version.) | string | latest |
| dockerDashComposeVersion | Default version of Docker Compose (v1, v2 or none) | string | v2 |
| azureDnsAutoDetection | Allow automatically setting the dockerd DNS server when the installation script detects it is running in Azure | boolean | true |
| dockerDefaultAddressPool | Define default address pools for Docker networks. e.g. base=192.168.0.0/16,size=24 | string | - |
| installDockerBuildx | Install Docker Buildx | boolean | true |
| installDockerComposeSwitch | Install Compose Switch (provided docker compose is available) which is a replacement to the Compose V1 docker-compose (python) executable. It translates the command line into Compose V2 docker compose then runs the latter. | boolean | true |
| disableIp6tables | Disable ip6tables (this option is only applicable for Docker versions 27 and greater) | boolean | false |

## Customizations

### VS Code Extensions

- `ms-azuretools.vscode-containers`



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/sansathan/devcontainer-feature/blob/main/src/dind/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
