# Perl HTTP Server

Este es un ejemplo básico de un servidor HTTP escrito en Perl, que responde con "Hello World" en la ruta raíz (`/`).

## Descripción

El servidor HTTP está implementado utilizando la clase `HTTP::Server::Simple::CGI` de Perl. Cuando se accede a la ruta raíz (`/`), el servidor responde con "Hello World from Perl!". Si se accede a cualquier otra ruta, se muestra un mensaje de "Page not found".

## Requisitos

- Perl (versión 5.32 o superior)
- Módulo Perl `HTTP::Server::Simple` (instalado automáticamente en el Dockerfile)

## Instalación y Ejecución

### Ejecutar localmente

1. Clona el repositorio: git clone https://github.com/tu-usuario/perl-http-server.git
2. Accede al directorio del proyecto:
cd perl-http-server
3. Ejecuta el servidor:
perl app.pl

4. Abre tu navegador y ve a `http://localhost:8080`.

### Ejecutar en Docker

1. Construye la imagen de Docker:
docker build -t perl-http-server .

2. Ejecuta el contenedor:
docker run -p 8080:8080 perl-http-server

3. Abre tu navegador y ve a `http://localhost:8080`.

## Estructura del Proyecto

- `app.pl`: Código Perl del servidor HTTP.
- `Dockerfile`: Archivo de configuración para empaquetar la aplicación en un contenedor de Docker.
- `README.md`: Este archivo de documentación.

## Mejoras Futuras

- Agregar más rutas y funcionalidades al servidor HTTP.
- Implementar un sistema de enrutamiento más avanzado.
- Agregar soporte para templates o vistas.
- Mejorar la seguridad y el manejo de errores.
