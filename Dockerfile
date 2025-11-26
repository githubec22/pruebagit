<<<<<<< HEAD
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
=======
# IMAGEN BASE estable
FROM python:3.12-alpine

# Actualizar pip para corregir vulnerabilidades (CVE)
RUN pip install --upgrade "pip>=25.3"

# INSTRUCCIONES
WORKDIR /app

# Copiar el archivo de la aplicación
COPY app.py .

# ENTRYPOINT
CMD ["python", "app.py"]
>>>>>>> 788f5126043ecff0654f53651c92c6d073e38d8d
