# Qubook

An open-source finance manager powered by [Flutter][flutter] and [Laravel][laravel], designed for clean insight and personal clarity.

---

> Please note that Qubook is still under active development

## Installation

### Backend

```bash
cd backend
composer run dev
```

### Frontend

```bash
cd frontend
flutter pub get
flutter run
```

---

## Folder Structure

```
lib/
├── pages/
│   ├── login.dart
│   ├── overview.dart
│   ├── transactions.dart
│   ├── subscriptions.dart
│   ├── statistics.dart
│   └── settings.dart
├── styles/
│   └── theme.dart
├── widgets/
│   └── navigation.dart
├── providers/
│   └── auth.dart
└── main.dart
```

---

### License

Qubook is licensed under the _Functional Source License, Version 1.1, MIT Future License_. It's free to use for
internal and non-commercial purposes, but it's not allowed to use a release for commercial purposes (competing use). See our [full license][license] for more details.

### Contributing

This project is under active development. Contributions are welcome.

---

## Screenshots

![Screenshot](screenshots/qubook-login-light.png)

![Screenshot](screenshots/qubook-login-dark.png)

[flutter]: https://flutter.dev/
[laravel]: https://laravel.com
[license]: LICENSE.md
