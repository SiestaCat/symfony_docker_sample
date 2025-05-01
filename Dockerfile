# Usa la última versión estable de PHP en modo CLI
FROM php:8.4.6-cli

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el contenido de tu proyecto (opcional)
# COPY . /app

# Define el ejecutable por defecto (puedes pasarle argumentos al iniciar el contenedor)
ENTRYPOINT ["php"]

# Argumento por defecto: iniciar REPL interactivo
CMD ["-a"]
