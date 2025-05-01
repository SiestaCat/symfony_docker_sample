# Usa la última versión estable de PHP en modo CLI
FROM php:8.4.6-cli

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      bash \
      git \
      unzip \
      zip \
      less \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

ENTRYPOINT ["bash"]