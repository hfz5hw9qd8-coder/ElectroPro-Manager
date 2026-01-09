#!/bin/bash

echo "🚀 Configuration de ElectroPro Manager..."
echo ""

# Vérifier que Flutter est installé
if ! command -v flutter &> /dev/null
then
    echo "❌ Flutter n'est pas installé. Veuillez l'installer d'abord."
    echo "   https://docs.flutter.dev/get-started/install"
    exit 1
fi

echo "✅ Flutter détecté: $(flutter --version | head -n 1)"
echo ""

# Nettoyer le projet
echo "🧹 Nettoyage du projet..."
flutter clean

# Installer les dépendances
echo "📦 Installation des dépendances..."
flutter pub get

if [ $? -ne 0 ]; then
    echo "❌ Erreur lors de l'installation des dépendances"
    exit 1
fi

# Générer les fichiers Hive
echo "🔨 Génération des fichiers Hive..."
flutter pub run build_runner build --delete-conflicting-outputs

if [ $? -ne 0 ]; then
    echo "❌ Erreur lors de la génération des fichiers"
    exit 1
fi

echo ""
echo "✅ Configuration terminée avec succès!"
echo ""
echo "📱 Pour lancer l'application:"
echo "   flutter run"
echo ""
echo "📊 Pour analyser le code:"
echo "   flutter analyze"
echo ""