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
