# Docker Swarm Demo

An application to showcase Docker Swarm and its capabilities. It is built with nginx that also have a custom rate limiter that is implemented using redis.

## Build

```
$ docker build -t kryptoblack/docker-swarm-demo:v1 --build-arg VERSION={v1|v2|v3} .
```

`Note: --build-arg VERSION=[VALUE] is necessary`

## Compose

### Startup

```
$ docker compose -f docker-compose.yml up -d
```

#### For Development

```
$ docker compose -f docker-compose.yml -f docker-compose.override.yml up -d
```

### Shutdown

```
$ docker compose -f docker-compose.yml up -d
```

#### For Development

```
$ docker compose -f docker-compose.yml -f docker-compose.override.yml down
```

`Note: if you do not need to edit .html, .js, .css, or .conf files, you can ommit both of the -f flags from the above command.`

## Swarm

### Prerequisites 

1. You need to have docker in [swarm mode](https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm/)
   1. You do not **need** worker nodes
   2. Make sure you configure the firewall appropriately according to the [documentation](https://docs.docker.com/engine/swarm/swarm-tutorial/)


### Deploy

This command works for creating the services and updating them.

```bash
$ docker stack deploy -c [COMPOSE-FILE NAME] [STACK NAME]
```

#### Example

```bash
$ docker stack deploy -c docker-compose.yml demo
```
