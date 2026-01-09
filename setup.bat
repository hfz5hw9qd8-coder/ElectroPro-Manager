@echo off
echo 🚀 Configuration de ElectroPro Manager...
echo.

REM Vérifier que Flutter est installé
where flutter >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Flutter n'est pas installé. Veuillez l'installer d'abord.
    echo    https://docs.flutter.dev/get-started/install
    exit /b 1
)

flutter --version | findstr /C:"Flutter"
echo.

REM Nettoyer le projet
echo 🧹 Nettoyage du projet...
flutter clean

REM Installer les dépendances
echo 📦 Installation des dépendances...
flutter pub get

if %errorlevel% neq 0 (
    echo ❌ Erreur lors de l'installation des dépendances
    exit /b 1
)

REM Générer les fichiers Hive
echo 🔨 Génération des fichiers Hive...
flutter pub run build_runner build --delete-conflicting-outputs

if %errorlevel% neq 0 (
    echo ❌ Erreur lors de la génération des fichiers
    exit /b 1
)

echo.
echo ✅ Configuration terminée avec succès!
echo.
echo 📱 Pour lancer l'application:
echo    flutter run
echo.
echo 📊 Pour analyser le code:
echo    flutter analyze
echo.
pause