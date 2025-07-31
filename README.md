# 📖 Random Quote Generator App

A clean and minimalist Flutter app that displays a random inspirational quote using the [ZenQuotes.io](https://zenquotes.io) API. Built using `Flutter` and `Provider` for state management.

---

## ✨ Features

- 📝 Displays a new random quote on app start and button press
- 👤 Shows both the quote and author name
- 🎨 Clean, responsive, and minimal UI
- 📡 Fetches quotes live from ZenQuotes API
- ⚙️ Built with `Flutter`, `Provider`, and `http`

---

## 🚀 Getting Started

### 📦 Prerequisites

- Flutter SDK (latest stable)
- Dart SDK
- An IDE (Android Studio, VS Code, etc.)

### 🔧 Installation

```bash
git clone https://github.com/your-username/random-quote-generator.git
cd random-quote-generator
flutter pub get
flutter run
```

---

## 🧱 Folder Structure

```
lib/
├── main.dart
├── provider/
│   └── quote_provider.dart
└── screens/
    └── quotes_screen.dart
```

---

## 🔌 API Reference

### ✅ ZenQuotes API

- **Endpoint:** `https://zenquotes.io/api/random`
- **Response:**
```json
[
  {
    "q": "Don't let yesterday take up too much of today.",
    "a": "Will Rogers"
  }
]
```
- **Usage in Dart:**
```dart
quote = data[0]['q'];
author = data[0]['a'];
```

---

## 📱 UI Highlights

- Custom app bar with "Inspire Me" title
- Large centered quote with styled text
- Refresh button with deep purple theming
- Built-in error handling

---

## 🚧 Future Enhancements

- 🌙 Dark mode support
- ❤️ Save favorite quotes locally
- 🔗 Share quote feature (copy/link/WhatsApp)
- 📶 Offline caching of quotes

---

## 🤝 Contributing

Pull requests are welcome. For major changes, open an issue first to discuss what you'd like to change.

---

## 📝 License

This project is licensed under the MIT License.
