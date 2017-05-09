# Shippler

## App Stack
* Docker
* PHP 7 | Laravel
* Mysql 5.7 db
* Nginx
* Node Js

## Setup

### Prerequisites
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* [Make](https://www.gnu.org/software/make)
* [Docker](https://www.docker.com/products/overview) (v >= 1.13.0)
* [Docker Compose](https://docs.docker.com/compose/install/) (v >= 1.12.0)

### Booting Up
``` bash
$ git clone git@github.com:spacebarweb/shippler.git ## Clone repo
$ cd shippler
$ git checkout develop ## Switch to develop branch
$ make init ## Builds and sets up containers
```
zzzzz...

Done finally?!! Phew!
* You have to add 'shippler.local' as a hostname entry to point to localhost
* Visit your [shippler.local](http://shippler.local) to view app frontend 

### Commands
``` bash
$ make composer-install ## Composer install
$ make build ## Build docker containers
$ make init ## Initialize docker container and run on initial setup
$ make npm-install ## Install npm files
```

## Directory Structure
```
|── shop/
│   ├── code
│   │   ├── appdata ## magento2 container
│   │   ├── nginx ## nginx container
│   │   ├── node ## node js container
│   │   ├── phpfpm ## phpfpm container
│   │   ├── docker-compose.yml ## base docker-compose
│   ├── ops
│   │   ├── scripts ## devops scripts
│   ├── Makefile ## make rules
```

## Contributors
Manny <ma@360living.de>
