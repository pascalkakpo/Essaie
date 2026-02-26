#!/bin/bash
set -e  # stop on error

# Installer eas-cli localement dans le projet
npm install eas-cli

# Vérifie que le token Expo est défini
if [ -z "$EXPO_TOKEN" ]; then
  echo "ERROR: EXPO_TOKEN n'est pas défini !"
  exit 1
fi

echo "✅ Using Expo token and building platform: android"

# Build EAS directement avec le token déjà défini dans l'environnement
EAS_NO_VCS=1 eas build --platform android --profile production --non-interactive