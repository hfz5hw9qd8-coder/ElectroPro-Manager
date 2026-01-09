# ⚡ ElectroPro Manager - Application de Gestion pour Électriciens

Application mobile Flutter professionnelle pour la gestion complète d'une entreprise d'électricité.

## 📱 Fonctionnalités

### 🔧 Gestion des Chantiers
- ✅ Création et planification des interventions
- ✅ Suivi en temps réel de l'état des chantiers
- ✅ Gestion des priorités (Normal, Urgent, Critique)
- ✅ Types d'interventions : Installation, Dépannage, Maintenance, Diagnostic, etc.
- ✅ Photos et documentation sur site
- ✅ Signature électronique du client
- ✅ Certificats de conformité Consuel
- ✅ Checklist personnalisable
- ✅ Calcul des coûts estimés et réels
- ✅ Gestion du matériel nécessaire

### 👥 Gestion des Clients
- ✅ Base de données clients (Particuliers, Professionnels, Industriels)
- ✅ Historique complet des interventions
- ✅ Contrats de maintenance
- ✅ Informations SIRET et TVA pour les professionnels
- ✅ Méthode de contact préférée
- ✅ Géolocalisation des adresses
- ✅ Tags personnalisés

### 📅 Calendrier & Planning
- ✅ Vue calendrier mensuel/hebdomadaire
- ✅ Planification par glisser-déposer
- ✅ Alertes pour les interventions urgentes
- ✅ Disponibilité des électriciens en temps réel
- ✅ Affichage des interventions du jour
- ✅ Synchronisation avec calendriers externes

### 💰 Devis & Facturation
- ✅ Création de devis professionnels
- ✅ Gestion des articles et tarifs
- ✅ Calcul automatique de la TVA
- ✅ Génération de factures PDF
- ✅ Suivi des paiements
- ✅ Envoi par email
- ✅ Statistiques de revenus

### 📊 Rapports & Statistiques
- ✅ Tableau de bord avec KPIs
- ✅ Revenus par période
- ✅ Taux de satisfaction client
- ✅ Performance des électriciens
- ✅ Chantiers terminés vs en cours
- ✅ Export des données

### 🛠️ Fonctionnalités Techniques Spécifiques
- ✅ Gestion des certifications électriques
- ✅ Conformité aux normes NF C 15-100
- ✅ Suivi des attestations de conformité
- ✅ Gestion des bornes de recharge VE
- ✅ Installations domotiques
- ✅ Systèmes de sécurité

## 🎨 Interface

- ✨ Design moderne et intuitif
- 🌓 Mode clair et sombre
- 📱 Interface adaptative (smartphone/tablette)
- 🎯 Navigation fluide
- ⚡ Performance optimisée
- 🇫🇷 Localisé en français

## 🏗️ Architecture Technique

### Technologies Utilisées
- **Framework**: Flutter 3.x
- **Langage**: Dart 3.x
- **État**: Riverpod 3.x
- **Base de données locale**: Hive 2.x
- **Calendrier**: TableCalendar 3.x
- **PDF**: pdf 3.x
- **Email**: mailer 6.x
- **Localisation**: intl 0.20.x

### Structure du Projet

```
lib/
├── main.dart                    # Point d'entrée
├── models/                      # Modèles de données
│   ├── job.dart                # Chantier
│   ├── client.dart             # Client
│   ├── quote.dart              # Devis
│   ├── invoice.dart            # Facture
│   └── electrician.dart        # Électricien
├── providers/                   # Gestion d'état Riverpod
│   ├── job_provider.dart
│   └── client_provider.dart
├── screens/                     # Écrans de l'application
│   ├── home_screen.dart        # Tableau de bord
│   ├── jobs/                   # Gestion des chantiers
│   ├── clients/                # Gestion des clients
│   ├── calendar/               # Calendrier
│   ├── quotes/                 # Devis & factures
│   └── reports/                # Rapports
├── widgets/                     # Composants réutilisables
└── utils/                       # Utilitaires
    └── theme.dart              # Thème de l'app
```

## 🚀 Installation

### Prérequis
- Flutter SDK (3.10.0 ou supérieur)
- Dart SDK (3.10.0 ou supérieur)
- Android Studio / VS Code
- Émulateur Android ou iPhone

### Étapes d'installation

1. **Cloner le projet**
```bash
git clone https://github.com/votre-repo/electropro-manager.git
cd electropro-manager
```

2. **Installer les dépendances**
```bash
flutter pub get
```

3. **Générer les fichiers Hive**
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Lancer l'application**
```bash
flutter run
```

## 📝 Génération des Adaptateurs Hive

Les modèles utilisent Hive pour la persistance locale. Après toute modification des modèles, régénérez les adaptateurs :

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Pour le watch mode (regénération automatique) :
```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

## 🎯 Types d'Interventions Disponibles

1. **Installation** - Installation électrique complète
2. **Dépannage** - Réparation et diagnostic
3. **Maintenance** - Entretien préventif
4. **Diagnostic** - Inspection et contrôle
5. **Mise aux normes** - Mise à jour du tableau électrique
6. **Rénovation** - Rénovation complète du système
7. **Borne VE** - Installation de borne de recharge
8. **Éclairage** - Installation d'éclairage
9. **Sécurité** - Système de sécurité et alarme
10. **Domotique** - Installation domotique
11. **Urgence** - Intervention d'urgence
12. **Autre** - Autres services

## 📊 Statuts des Chantiers

- **Planifié** (Bleu) - Intervention programmée
- **En cours** (Orange) - Intervention en cours
- **Terminé** (Vert) - Intervention terminée
- **Annulé** (Rouge) - Intervention annulée
- **En attente** (Gris) - En attente de validation
- **Urgent** (Rouge foncé) - Priorité urgente

## 🔐 Sécurité & Conformité

- ✅ Stockage local sécurisé avec Hive
- ✅ Pas de données sensibles dans le cloud
- ✅ Conformité RGPD
- ✅ Sauvegarde locale des données
- ✅ Chiffrement des données sensibles

## 🐛 Résolution des Problèmes

### Erreur de génération Hive
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### Problème de dépendances
```bash
flutter pub upgrade
```

### Erreur de build
```bash
flutter clean
flutter pub get
flutter run
```

## 📱 Captures d'Écran

### Tableau de Bord
- Vue d'ensemble des interventions du jour
- Statistiques en temps réel
- Accès rapide aux fonctionnalités

### Gestion des Chantiers
- Liste complète avec filtres
- Vue détaillée de chaque intervention
- Statuts et priorités visuels

### Calendrier
- Vue mensuelle/hebdomadaire
- Glisser-déposer pour planifier
- Marqueurs visuels pour les événements

### Clients
- Base de données organisée
- Historique complet
- Informations détaillées

## 🔄 Mises à Jour Futures

- [ ] Synchronisation cloud
- [ ] Mode hors ligne amélioré
- [ ] Intégration GPS en temps réel
- [ ] Chat avec les clients
- [ ] Marketplace de matériel électrique
- [ ] Formation continue et certifications
- [ ] Intégration comptable (QuickBooks, etc.)
- [ ] API REST pour intégrations tierces
- [ ] Application web compagnon
- [ ] Reconnaissance vocale pour les notes

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :
1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 👨‍💻 Développement

### Tests
```bash
flutter test
```

### Build Production

**Android**
```bash
flutter build apk --release
```

**iOS**
```bash
flutter build ios --release
```

### Analyse du Code
```bash
flutter analyze
```

## 📞 Support

Pour toute question ou problème :
- 📧 Email: support@electropro.com
- 🐛 Issues: GitHub Issues
- 📖 Documentation: Wiki du projet

## 🎓 Formation

Des tutoriels vidéo et de la documentation détaillée sont disponibles sur notre site web pour vous aider à tirer le meilleur parti de l'application.

---

**Développé avec ❤️ pour les électriciens professionnels**

⚡ **ElectroPro Manager** - Gérez votre activité électrique efficacement