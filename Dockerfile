# IMAGEN BASE
FROM python:3.14-alphine
# INSTRUCCIONES
WORKDIR /app

RUN echo "Ejecutando instrucciones adicionales..."
# Copiar el archivo de la aplicación
COPY app.py .

# Exponer el puerto 3000
EXPOSE 3000

# ENTRYPOINT
CMD ["python", "app.py"]