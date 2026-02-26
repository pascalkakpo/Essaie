#!/bin/bash
set -e  # arrête le script si une commande échoue

# Vérifie que le token Expo est défini
if [ -z "$EXPO_TOKEN" ]; then
  echo "❌ EXPO_TOKEN is not set!"
  exit 1
fi

echo "✅ Using Expo token and building platform: android"

# Installe la CLI EAS si nécessaire
npm install -g eas-cli

# Login programmatique avec token
eas login --token "$EXPO_TOKEN"

# Lance le build Android
eas build --platform android --profile production --non-interactive