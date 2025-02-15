FROM python:3.9-slim

# Installer les dépendances système
RUN apt-get update && apt-get install -y ffmpeg

# Définir le répertoire de travail
WORKDIR /app

# Copier tous les fichiers du projet
COPY . .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r src/requirements.txt

# Point d'entrée pour l'exécution
ENTRYPOINT ["python", "src/main.py"]
