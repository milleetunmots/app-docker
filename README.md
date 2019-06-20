# 1001mots Docker setup

## Dependencies

### Docker & Docker Compose

You need them to run the app. On Ubuntu 18.04 AWS AMI you can follow these instructions:
```
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y apt-transport-https
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update && sudo apt-get install -y docker-ce docker-compose
sudo usermod -aG docker ${USER}
# log out and come back in
```

## Installation

### Clone

```
sudo mkdir /opt/docker && sudo chown $(whoami) /opt/docker
git clone https://github.com/milleetunmots/app-docker.git /opt/docker --depth=1
```

### Configure

#### ENV

```
cp /opt/docker/.env.example /opt/docker/.env
nano /opt/docker/.env
cp /opt/docker/config/caddy.env.example /opt/docker/config/caddy.env
nano /opt/docker/config/caddy.env
cp /opt/docker/config/rails.env.example /opt/docker/config/rails.env
nano /opt/docker/config/rails.env
```

## Run

This command can be used to start the app a first time, then later for upgrading:
```
/opt/docker/run-upgrade.sh
```
