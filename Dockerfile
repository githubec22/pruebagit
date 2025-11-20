# IMAGEN BASE (estable, sin RC)
FROM python:3.12-alpine

# Evitar salida interactiva
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Actualizar dependencias del sistema
RUN apk update && apk upgrade

# Instalar dependencias mínimas del sistema (si tu app no las requiere, puedes quitarlas)
RUN apk add --no-cache build-base

# Actualizar pip a versión segura SIN usar pip>=xx (mejor práctica)
RUN pip install --no-cache-dir --upgrade pip

# DIRECTORIO DE TRABAJO
WORKDIR /app

# Copiar archivos de la aplicación
COPY app.py .

# ENTRYPOINT
CMD ["python", "app.py"]