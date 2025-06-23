# EatSafeAI 🍽️

EatSafeAI is an AI-powered mobile application built with FlutterFlow to help users manage food intolerances and allergies by providing personalized dietary recommendations. It supports iOS, Android, and Web platforms. 📱✨

## Features 🚀

- **Personalized Dashboard**: Get tips and insights tailored to your dietary restrictions
- **Smart Recipe Search**: AI-powered search for recipes matching your intolerances
- **Intolerance Setup**: Easily configure your food intolerances and allergies
- **History Management**: Track and manage your search history
- **Secure Authentication**: Google and Apple sign-in options

## Tech Stack 🛠️

- **Flutter/FlutterFlow**: Cross-platform development
- **Firebase**: Backend services (Firestore, Auth, Cloud Functions)
- **Google Generative AI**: Powers AI recommendations
- **LangChain**: AI framework integration
- **Node.js**: For Cloud Functions

## Getting Started 🏁

### Prerequisites

- Flutter SDK (3.0+)
- Firebase CLI

### Installation & Run

1. Clone the repository and install dependencies:
   ```bash
   git clone https://github.com/yourusername/EatSafeAI.git
   cd EatSafeAI
   flutter pub get
   ```

2. Configure Firebase:
   - Add `google-services.json` to `android/app/`
   - Add `GoogleService-Info.plist` to `ios/Runner/`

3. Run the app:
   ```bash
   flutter run
   ```

   For specific platforms:
   - **Android**: `flutter run -d android`
   - **iOS**: `flutter run -d ios`
   - **Web**: `flutter run -d web-server --web-port 3000`

## Project Structure Highlights 📂

```
📁 EatSafeAI/
├── 📁 lib/                           # Main application source code
│   ├── 📄 main.dart                  # App entry point
│   ├── 📄 app_state.dart             # Global state management
│   ├── 📁 auth/                      # Authentication logic
│   ├── 📁 backend/                   # Backend integration (Firebase, Gemini AI)
│   ├── 📁 components/                # Reusable UI components
│   ├── 📁 flutter_flow/              # FlutterFlow generated utilities
│   ├── 📁 mainpages/                 # Primary application screens (Dashboard, Search, Settings)
│   ├── 📁 setup/                     # Onboarding and initial setup
│   └── 📁 custom_code/               # Custom actions and widgets
│
├── 📁 assets/                        # Static application assets (images, fonts)
├── 📁 firebase/                      # Firebase backend configuration (rules, functions)
├── 📁 android/                       # Android platform-specific code
├── 📁 ios/                           # iOS platform-specific code
├── 📁 web/                           # Web platform-specific code
└── 📁 test/                          # Test files
```

## Deployment 🚀

### Build for Production

- **Android (APK/AAB)**: `flutter build apk --release` or `flutter build appbundle --release`
- **iOS (IPA)**: `flutter build ios --release` (then archive in Xcode)
- **Web**: `flutter build web --release`

### Firebase Deployment

- **Cloud Functions**: `cd firebase/functions` then `npm run deploy`
- **Firestore Rules & Indexes**: `firebase deploy --only firestore:rules,firestore:indexes`
- **Complete Firebase Deployment**: `firebase deploy`

## Contributing 🤝

We welcome contributions!

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes following Dart Style Guide
4. Push to your branch
5. Open a Pull Request with a clear description

## License 📜

This project is licensed under the MIT License.

## Authors & Contributors 👥

- Hannah Durchschlag
- Moritz Enderle
