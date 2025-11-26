# IMAGEN BASE
FROM python:3.12-alpine
# INSTRUCCIONES
WORKDIR /app

RUN echo "Ejecutando instrucciones adicionales..."
# Copiar el archivo de la aplicación-2
COPY app.py .

# Exponer el puerto 3000
EXPOSE 3000

# ENTRYPOINT
CMD ["python", "app.py"]