# Usa una imagen base de Perl
FROM perl:latest

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el archivo Perl al contenedor
COPY app.pl .

# Asegúrate de que el archivo es ejecutable
RUN chmod +x app.pl

# Expón el puerto 8080
EXPOSE 8080

# Inicia el servidor web para la app
CMD ["perl", "app.pl"]
