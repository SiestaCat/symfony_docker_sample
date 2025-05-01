# Symfony Docker Sample

## Build

```bash
docker build -t symfony-docker-sample .
```

## Run

```bash
docker run --rm -it -v $(pwd):/app symfony-docker-sample
```