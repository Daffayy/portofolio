# Personal Portfolio - Daffa Rafif Agustian

Portfolio web modern dibangun dengan **Flutter** menggunakan **Clean Architecture**, **MVVM**, dan **Riverpod** untuk state management.

## 🏗️ Arsitektur

### Clean Architecture
- **Domain Layer** (`lib/domain/`): Entities dan repository abstractions
- **Data Layer** (`lib/data/`): Implementasi repository dengan data dari CV
- **Presentation Layer** (`lib/presentation/`): UI, ViewModels (Riverpod), dan Widgets

### MVVM Pattern
- **Model**: Entities di domain layer
- **View**: Widgets di `presentation/widgets/` dan `presentation/pages/`
- **ViewModel**: Riverpod providers di `presentation/providers/`

## 🚀 Menjalankan Project

```bash
# Install dependencies
flutter pub get

# Run di Chrome (Web)
flutter run -d chrome

# Build untuk production
flutter build web
```

## 📁 Struktur Folder

```
lib/
├── core/                 # Theme, constants
├── data/                 # Repositories implementation
├── domain/               # Entities, repository interfaces
├── presentation/
│   ├── pages/            # Main screens
│   ├── providers/        # Riverpod ViewModels
│   └── widgets/          # Reusable UI components
└── main.dart
```

## 🎨 Fitur

- Dark theme dengan kombinasi warna Teal, Amber, dan Indigo
- Animasi smooth dengan flutter_animate
- Responsive design
- Navigasi smooth ke section
- Link ke GitHub, LinkedIn, dan portfolio
- Kontak (phone, email) yang dapat diklik

## 📦 Dependencies

- `flutter_riverpod` - State management
- `google_fonts` - Typography (Plus Jakarta Sans)
- `url_launcher` - Membuka link eksternal
- `flutter_animate` - Animasi

## 🌐 Deploy ke GitHub Pages

Project ini menggunakan GitHub Actions untuk auto-deploy. Setiap push ke branch `main` akan otomatis build dan deploy ke:

**https://daffayy.github.io/portofolio/**

Pastikan GitHub Pages diaktifkan di **Settings → Pages** dengan source **GitHub Actions**.
