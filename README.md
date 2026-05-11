<div align="center">

<img src="assets/images/app_review_logo.png" alt="Karbon AI Logo" width="120"/>

# Karbon AI

**Track your carbon footprint, improve your daily habits, protect the planet.**

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?logo=firebase&logoColor=black)](https://firebase.google.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

</div>

---

## Table of Contents

- [About](#about)
- [Features](#features)
- [Architecture](#architecture)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Firebase Setup](#firebase-setup)
  - [Environment Variables](#environment-variables)
  - [Running the App](#running-the-app)
- [Project Structure](#project-structure)
- [Modules](#modules)
- [Contributing](#contributing)

---

## About

**Karbon AI** is a Flutter mobile application that helps users track, calculate, and reduce their carbon footprint from daily activities. With AI-powered suggestions, leaderboards, and personal statistics, it encourages sustainable living.

---

## Features

| Feature | Description |
|---|---|
| 🌍 **Carbon Calculation** | Survey-based carbon footprint measurement |
| 📅 **Calendar** | Daily activity tracking and history view |
| 🏃 **Daily Activities** | Sustainable habit suggestions and tracking |
| 🏆 **Leaderboard** | Monthly leader rankings and community standings |
| 👤 **Profile & Donations** | Personal statistics and environmental contributions |
| 💡 **Useful Info** | Eco-friendly lifestyle guide content |
| 🔔 **Notifications** | Smart reminders via Firebase Cloud Messaging |
| 🎨 **Customizable Theme** | Dynamic theme system |

---

## Architecture

The application follows a **feature-first Clean Architecture** structure.

```
Presentation Layer  →  BLoC / Cubit (UI State Management)
       ↓
Domain Layer        →  Use Cases + Repository Contracts
       ↓
Data Layer          →  Repository Implementations + Data Sources (Remote / Local)
```

### App Startup Flow

```
main()
  └─ Firebase.initializeApp()
  └─ runApp(AppBootstrapGate)
        ├─ SplashBloc → initializeDateFormatting()
        │              → configureDependencies() (GetIt)
        │              → NotificationService.init()
        ├─ AuthBloc   → session check
        └─ _readyToLaunch → GlobalBlocProviders → KarbonApp (Router)
```

---

## Tech Stack

### Core

| Package | Purpose |
|---|---|
| [flutter_bloc](https://pub.dev/packages/flutter_bloc) | State management (BLoC + Cubit) |
| [get_it](https://pub.dev/packages/get_it) + [injectable](https://pub.dev/packages/injectable) | Dependency injection |
| [auto_route](https://pub.dev/packages/auto_route) | Declarative routing + route guards |
| [freezed](https://pub.dev/packages/freezed) | Immutable state & event models |
| [dartz](https://pub.dev/packages/dartz) | Functional error handling (`Either`) |

### Networking & Storage

| Package | Purpose |
|---|---|
| [dio](https://pub.dev/packages/dio) | HTTP client + interceptors |
| [cookie_jar](https://pub.dev/packages/cookie_jar) + [dio_cookie_manager](https://pub.dev/packages/dio_cookie_manager) | Cookie management |
| [hive](https://pub.dev/packages/hive) | Local NoSQL database |
| [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) | Secure token storage |
| [shared_preferences](https://pub.dev/packages/shared_preferences) | Lightweight key-value storage |

### Firebase

| Service | Purpose |
|---|---|
| Firebase Core | Platform initialization |
| Firebase Crashlytics | Error tracking & reporting |
| Firebase Messaging | Push notifications (FCM) |
| Firebase Analytics | User behaviour analytics |

### UI & UX

| Package | Purpose |
|---|---|
| [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) | Responsive design |
| [flutter_web_frame](https://pub.dev/packages/flutter_web_frame) | Mobile frame on large screens |
| [cached_network_image](https://pub.dev/packages/cached_network_image) | Image caching |
| [lottie](https://pub.dev/packages/lottie) | Vector animations |
| [table_calendar](https://pub.dev/packages/table_calendar) | Calendar widget |

---

## Getting Started

### Prerequisites

- Flutter SDK `>=3.2.3 <4.0.0`
- Dart SDK `>=3.2.3`
- Android Studio or VS Code with Flutter plugin
- A Firebase project (Crashlytics, Messaging, Analytics)
- Node.js *(optional — for local mock server)*

### Installation

```bash
# Clone the repository
git clone https://github.com/your-username/karbon.git
cd karbon

# Install dependencies
flutter pub get

# Run code generation (auto_route, injectable, freezed, json_serializable)
dart run build_runner build --delete-conflicting-outputs
```

### Firebase Setup

1. Create a new project in the [Firebase Console](https://console.firebase.google.com)
2. Register Android and iOS apps
3. Place `google-services.json` → `android/app/`
4. Place `GoogleService-Info.plist` → `ios/Runner/`
5. Generate `firebase_options.dart` with FlutterFire CLI:

```bash
dart pub global activate flutterfire_cli
flutterfire configure
```

### Environment Variables

The API base URL is provided at build time via `--dart-define`:

```bash
# Development
flutter run --dart-define=API_BASE_URL=https://api-dev.example.com

# Production
flutter build apk --dart-define=API_BASE_URL=https://api.example.com
```

Defined in `lib/core/networks/api_config.dart`:

```dart
abstract final class ApiConfig {
  static const String baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: '',
  );
}
```

### Running the App

```bash
# Debug
flutter run

# Release — Android
flutter build apk --release --dart-define=API_BASE_URL=https://api.example.com

# Release — iOS
flutter build ipa --release --dart-define=API_BASE_URL=https://api.example.com
```

---

## Project Structure

```
lib/
├── main.dart                          # Entry point, Firebase init
├── app.dart                           # KarbonApp — MaterialApp.router
├── app_bootstrap_gate.dart            # Bootstrap orchestrator + minimum splash duration
│
├── core/
│   ├── constants/                     # Assets, typography, spacing, extensions
│   ├── errors/                        # Error classes
│   ├── networks/                      # Dio setup, interceptors, ApiConfig
│   ├── theme/                         # AppTheme, LightAppTheme, ThemeExtension
│   └── utils/                         # BlocObserver, helpers
│
├── di/
│   ├── di.dart                        # GetIt init + GlobalBlocProviders
│   └── di.config.dart                 # Injectable-generated config
│
├── features/
│   ├── auth/                          # Authentication, splash, settings
│   ├── calendar/                      # Calendar, day detail
│   ├── carboncalculate/               # Carbon survey flow
│   ├── dailyactivites/                # Daily activities
│   ├── home/                          # Home dashboard
│   ├── leaderofmont/                  # Leaderboard
│   ├── profile/                       # Profile, donations
│   └── usefulinfos/                   # Useful info content
│
├── l10n/
│   ├── app_tr.arb                     # Turkish localisation strings
│   └── app_localizations.dart         # Generated localisation code
│
├── router/
│   ├── navigation.dart                # AppRouter, route definitions
│   ├── navigation.gr.dart             # auto_route generated code
│   ├── app_startup_guard.dart         # Auth route guard
│   └── shells/                        # Tab shell routes
│
├── services/
│   └── notification_service.dart      # FCM push notification service
│
└── widgets/                           # Shared UI components
    ├── app_button.dart
    ├── app_logo.dart
    ├── textfield.dart
    └── ...
```

### Feature Module Structure

Every feature follows the same layered layout:

```
features/[feature]/
├── data/
│   ├── datasources/       # Remote & local data sources
│   ├── dto/               # JSON serialisation models
│   ├── mappers/           # DTO → Entity converters
│   ├── mocks/             # Mock data for development
│   └── repositories/      # Repository implementations
├── domain/
│   ├── entities/          # Business logic models
│   ├── repositories/      # Abstract repository interfaces
│   └── usecases/          # Use case classes
└── presentation/
    ├── bloc/              # BLoC / Cubit classes
    ├── pages/             # Page widgets
    │   └── [page]/
    │       ├── [page].dart
    │       ├── widgets/   # Page-specific widgets
    │       └── sections/  # Large page sections
    ├── controllers/       # Form controllers
    └── selectors/         # BlocSelector helpers
```

---

## Modules

### 🔐 Auth

Manages the full authentication flow, session handling, and app startup sequence.

- **Splash** — App startup animation and bootstrap orchestration
- **Login / Register** — User sign-in and sign-up
- **Forgot / Reset Password** — Password recovery flow
- **Custom First Open** — Onboarding screen for first-time users
- **Settings** — Theme and user preferences

### 📅 Calendar

Displays activity history in a monthly calendar view.

- Monthly calendar overview
- Day detail — activities for a selected day
- Selected activity detail screen

### 🧮 Carbon Calculate

Survey-based flow that measures a user's carbon footprint.

### 🏃 Daily Activities

Lists and tracks sustainable daily habits with completion states.

### 🏠 Home

Main dashboard — summary statistics and quick-access shortcuts.

### 🏆 Leader of Month

Community leaderboard showcasing users with the lowest carbon footprint for the month.

### 👤 Profile

User profile, personal statistics, and environmental contribution (donation) history.

### 💡 Useful Infos

Guide content for eco-friendly living.

---

## Contributing

1. Fork this repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'feat: add new feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request

### Commit Message Convention

This project follows [Conventional Commits](https://www.conventionalcommits.org/):

```
feat:     new feature
fix:      bug fix
refactor: code restructuring without behaviour change
docs:     documentation update
chore:    dependency update / configuration change
```

### Code Generation

After any changes to models, routes, or DI registrations, regenerate:

```bash
dart run build_runner build --delete-conflicting-outputs
```

---

<div align="center">

**Karbon AI** · Built with Flutter

</div>
