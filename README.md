EatSafeAI 🍽️EatSafeAI is an AI-powered mobile application built with FlutterFlow to help users manage food intolerances and allergies by providing personalized dietary recommendations. It supports iOS, Android, and Web platforms. 📱✨Features 🚀Personalized Dashboard: Get tips and insights tailored to your dietary restrictions.Smart Recipe Search: AI-powered search for recipes matching your intolerances.Intolerance Setup: Easily configure your food intolerances and allergies.History Management: Track and manage your search history.Secure Authentication: Google and Apple sign-in options.Tech Stack 🛠️Flutter/FlutterFlow: Cross-platform development.Firebase: Backend services (Firestore, Auth, Cloud Functions).Google Generative AI: Powers AI recommendations.LangChain: AI framework integration.Node.js: For Cloud Functions.Getting Started 🏁PrerequisitesFlutter SDK (3.0+)Firebase CLIInstallation & RunClone the repository and install dependencies:git clone https://github.com/yourusername/EatSafeAI.git
cd EatSafeAI
flutter pub get
Configure Firebase:Add google-services.json to android/app/Add GoogleService-Info.plist to ios/Runner/Run the app:flutter run
For specific platforms:Android: flutter run -d androidiOS: flutter run -d iosWeb: flutter run -d web-server --web-port 3000Project Structure Highlights 📂📁 EatSafeAI/
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
Deployment 🚀Build for ProductionAndroid (APK/AAB): flutter build apk --release or flutter build appbundle --releaseiOS (IPA): flutter build ios --release (then archive in Xcode)Web: flutter build web --releaseFirebase DeploymentCloud Functions: cd firebase/functions then npm run deployFirestore Rules & Indexes: firebase deploy --only firestore:rules,firestore:indexesComplete Firebase Deployment: firebase deployContributing 🤝We welcome contributions!Fork the repository.Create a feature branch: git checkout -b feature/your-feature-name.Commit your changes following Dart Style Guide.Push to your branch.Open a Pull Request with a clear description.License 📜This project is licensed under the MIT License.Authors & Contributors 👥Hannah DurchschlagMoritz Enderle