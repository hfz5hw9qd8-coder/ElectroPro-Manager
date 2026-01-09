#!/bin/bash

# Script de génération des fichiers Hive pour ElectroPro Manager
# Usage: ./generate.sh

echo "🔧 ElectroPro Manager - Génération des adaptateurs Hive"
echo "========================================================="
echo ""

# Vérifier si Flutter est installé
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter n'est pas installé ou n'est pas dans le PATH"
    exit 1
fi

echo "✅ Flutter détecté: $(flutter --version | head -n 1)"
echo ""

# Nettoyer les builds précédents
echo "🧹 Nettoyage des builds précédents..."
flutter clean
echo "✅ Nettoyage terminé"
echo ""

# Récupérer les dépendances
echo "📦 Récupération des dépendances..."
flutter pub get
if [ $? -ne 0 ]; then
    echo "❌ Erreur lors de la récupération des dépendances"
    exit 1
fi
echo "✅ Dépendances récupérées"
echo ""

# Générer les adaptateurs Hive
echo "🔨 Génération des adaptateurs Hive..."
flutter pub run build_runner build --delete-conflicting-outputs
if [ $? -ne 0 ]; then
    echo "❌ Erreur lors de la génération des adaptateurs"
    exit 1
fi
echo "✅ Adaptateurs générés avec succès"
echo ""

# Analyser le code
echo "🔍 Analyse du code..."
flutter analyze
if [ $? -ne 0 ]; then
    echo "⚠️  Avertissements détectés lors de l'analyse"
else
    echo "✅ Aucun problème détecté"
fi
echo ""

echo "========================================================="
echo "✨ Génération terminée avec succès!"
echo ""
echo "Prochaines étapes:"
echo "  1. Vérifier les fichiers générés (*.g.dart)"
echo "  2. Lancer l'application: flutter run"
echo "  3. Tester les fonctionnalités"
echo ""
echo "Pour le watch mode (regénération automatique):"
echo "  flutter pub run build_runner watch --delete-conflicting-outputs"
echo "========================================================="