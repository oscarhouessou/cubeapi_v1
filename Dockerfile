# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers requirements.txt et app.py dans le répertoire de travail
COPY requirements.txt requirements.txt
COPY app.py app.py

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port sur lequel l'application sera accessible
EXPOSE 8000

# Définir la commande pour exécuter l'application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
