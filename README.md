# EatSafeAI

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![FlutterFlow](https://img.shields.io/badge/FlutterFlow-5C6BC0?style=for-the-badge&logo=flutter&logoColor=white)](https://flutterflow.io)

EatSafeAI is an AI-powered mobile application built with FlutterFlow that helps users manage food intolerances and allergies. The app provides personalized recommendations to help users navigate dietary restrictions safely.

## Features

- **Personalized Dashboard**: View tips and insights based on your intolerances and allergies
- **Smart Recipe Search**: AI-powered search for recipes tailored to your dietary restrictions  
- **Intolerance Setup**: Easy configuration of your food intolerances and allergies
- **History Management**: Track and manage your search history
- **Multi-Platform**: iOS, Android, and Web support
- **Secure Authentication**: Google and Apple sign-in options

## Tech Stack

- **Flutter/FlutterFlow**: Cross-platform development
- **Firebase**: Backend services (Firestore, Auth, Cloud Functions)
- **Google Generative AI**: AI-powered recommendations
- **LangChain**: AI framework integration

## Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.0+)
- [Firebase CLI](https://firebase.google.com/docs/cli)
- [Node.js](https://nodejs.org/) (for Cloud Functions)

### Installation

1. **Clone and install dependencies:**
   ```bash
   git clone https://github.com/yourusername/EatSafeAI.git
   cd EatSafeAI
   flutter pub get
   ```

2. **Configure Firebase:**
   - Add `google-services.json` to `android/app/`
   - Add `GoogleService-Info.plist` to `ios/Runner/`

3. **Run the app:**
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── app_state.dart           # Global state management
├── mainpages/               # Main app screens
├── setup/                   # Onboarding flows
├── backend/                 # Firebase integration
└── flutter_flow/            # FlutterFlow utilities

firebase/functions/          # Cloud Functions
assets/                     # Images, fonts, etc.
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.

## Authors

- Hannah Durchschlag
- Moritz Enderle

## Acknowledgements

- Built with [FlutterFlow](https://flutterflow.io/)
- Powered by [Firebase](https://firebase.google.com/)
```

**For Specific Platforms:**
```bash
# Android
flutter run -d android

# iOS  
flutter run -d ios

# Web
flutter run -d web-server --web-port 3000
```

### 🔧 Configuration Options

#### Firebase Setup
- Configure Firestore security rules in `firebase/firestore.rules`
- Set up Firebase Authentication providers in the Firebase Console
- Configure Cloud Storage rules in `firebase/storage.rules`

#### AI Services Configuration
- Add your Google Generative AI API key to environment variables
- Configure LangChain settings in `lib/backend/gemini/`
- Set up OpenAI integration if using GPT models

---

## 📁 Detailed Project Structure

```
📁 EatSafeAI/
├── 📄 pubspec.yaml                    # Flutter dependencies and project configuration
├── 📄 analysis_options.yaml          # Dart static analysis configuration
├── 📄 README.md                      # Project documentation
│
├── 📁 lib/                           # Main application source code
│   ├── 📄 main.dart                  # Application entry point and initialization
│   ├── 📄 app_state.dart             # Global application state management
│   ├── 📄 index.dart                 # Central exports for all pages and components
│   │
│   ├── 📁 auth/                      # Authentication logic
│   │   ├── 📄 auth_manager.dart      # Authentication state management
│   │   ├── 📄 base_auth_user_provider.dart  # Base authentication provider
│   │   └── 📁 firebase_auth/         # Firebase-specific authentication
│   │
│   ├── 📁 backend/                   # Backend integration layer
│   │   ├── 📄 backend.dart           # Backend service orchestration
│   │   ├── 📁 api_requests/          # HTTP API call implementations
│   │   ├── 📁 firebase/              # Firebase service integrations
│   │   ├── 📁 gemini/                # Google Gemini AI integration
│   │   └── 📁 schema/                # Data models and schemas
│   │
│   ├── 📁 components/                # Reusable UI components
│   │   ├── 📄 title_with_back_widget.dart  # Header component with back navigation
│   │   └── 📁 nav_bar/               # Navigation bar components
│   │
│   ├── 📁 flutter_flow/              # FlutterFlow generated utilities
│   │   ├── 📄 flutter_flow_theme.dart      # App theming and styling
│   │   ├── 📄 flutter_flow_util.dart       # Utility functions
│   │   ├── 📄 flutter_flow_widgets.dart    # Custom widget implementations
│   │   ├── 📄 custom_functions.dart        # Custom business logic functions
│   │   └── 📁 nav/                         # Navigation configuration
│   │
│   ├── 📁 mainpages/                 # Primary application screens
│   │   ├── 📁 dashboard/             # Home dashboard and insights
│   │   ├── 📁 search/                # Recipe and ingredient search
│   │   ├── 📁 search_result/         # Search results display
│   │   └── 📁 settings/              # User settings and preferences
│   │
│   ├── 📁 setup/                     # Onboarding and initial setup
│   │   ├── 📁 intolerance/           # Food intolerance configuration
│   │   └── 📁 welcome/               # Welcome and introduction screens
│   │
│   └── 📁 custom_code/               # Custom implementations
│       ├── 📁 actions/               # Custom actions and business logic
│       └── 📁 widgets/               # Custom widget implementations
│
├── 📁 assets/                        # Static application assets
│   ├── 📁 images/                    # Image resources and graphics
│   ├── 📁 fonts/                     # Custom fonts and typography
│   ├── 📁 audios/                    # Audio files and sound effects
│   ├── 📁 videos/                    # Video resources
│   ├── 📁 rive_animations/           # Rive animation files
│   ├── 📁 jsons/                     # JSON data files
│   └── 📁 pdfs/                      # PDF documents and resources
│
├── 📁 firebase/                      # Firebase backend configuration
│   ├── 📄 firebase.json             # Firebase project configuration
│   ├── 📄 firestore.rules           # Firestore security rules
│   ├── 📄 firestore.indexes.json    # Database indexes configuration
│   ├── 📄 storage.rules             # Cloud Storage security rules
│   └── 📁 functions/                 # Cloud Functions (Node.js)
│       ├── 📄 package.json          # Node.js dependencies
│       ├── 📄 index.js               # Cloud Functions entry point
│       └── 📄 api_manager.js         # API management and routing
│
├── 📁 android/                       # Android platform-specific code
│   ├── 📄 build.gradle              # Android build configuration
│   ├── 📁 app/                       # Android app module
│   │   ├── 📄 build.gradle          # App-level build configuration
│   │   └── 📄 google-services.json  # Firebase Android configuration
│   └── 📁 gradle/                    # Gradle wrapper configuration
│
├── 📁 ios/                          # iOS platform-specific code
│   ├── 📄 Podfile                   # CocoaPods dependencies
│   ├── 📁 Runner/                   # iOS app target
│   │   ├── 📄 GoogleService-Info.plist  # Firebase iOS configuration
│   │   └── 📄 Info.plist            # iOS app configuration
│   └── 📁 Runner.xcodeproj/         # Xcode project files
│
├── 📁 web/                          # Web platform-specific code
│   ├── 📄 index.html                # Web app entry point
│   └── 📁 icons/                    # Web app icons and favicons
│
└── 📁 test/                         # Test files and test utilities
    └── 📄 widget_test.dart          # Widget and integration tests
```

### 🔍 Key Directories Explained

- **`lib/mainpages/`**: Contains the core user-facing screens of the application
- **`lib/backend/`**: Handles all external service integrations and data management
- **`lib/flutter_flow/`**: FlutterFlow-generated code for UI components and utilities
- **`firebase/functions/`**: Serverless backend logic including AI processing
- **`assets/`**: All static resources organized by type for easy management

---

## 🧪 Testing

### Running Tests

**Unit Tests:**
```bash
flutter test
```

**Integration Tests:**
```bash
flutter test integration_test/
```

**Widget Tests:**
```bash
flutter test test/widget_test.dart
```

### Test Coverage

Generate test coverage reports:
```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

### Testing Strategy

- **Unit Tests**: Test individual functions and classes in isolation
- **Widget Tests**: Test UI components and their interactions  
- **Integration Tests**: Test complete user flows and app behavior
- **Firebase Rules Testing**: Test Firestore security rules locally

---

## 🔧 Development & Customization

### Code Organization

The project follows a modular architecture with clear separation of concerns:

- **Presentation Layer**: UI components and pages (`lib/mainpages/`, `lib/components/`)
- **Business Logic**: State management and custom functions (`lib/flutter_flow/`, `lib/app_state.dart`)
- **Data Layer**: Backend services and API integrations (`lib/backend/`)

### Customization Guide

#### 🎨 Theming & UI Customization
```dart
// lib/flutter_flow/flutter_flow_theme.dart
class FlutterFlowTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.green,
    // Customize your theme here
  );
}
```

#### 🔄 State Management
The app uses Provider for state management. Global state is managed in `lib/app_state.dart`:

```dart
class FFAppState extends ChangeNotifier {
  // Add your global state variables here
  List<String> userIntolerances = [];
  
  void updateIntolerances(List<String> newIntolerances) {
    userIntolerances = newIntolerances;
    notifyListeners();
  }
}
```

#### 🌐 API Integration
Add new API endpoints in `lib/backend/api_requests/`:

```dart
class CustomAPICall {
  static Future<ApiCallResponse> call({
    required String endpoint,
    Map<String, dynamic>? parameters,
  }) async {
    // Your API implementation
  }
}
```

#### 🤖 AI Model Configuration
Configure AI models in `lib/backend/gemini/`:

```dart
final geminiModel = GenerativeModel(
  model: 'gemini-pro',
  apiKey: FFAppConstants.geminiApiKey,
);
```

### 📱 Platform-Specific Configuration

#### Android Configuration
- **Build Configuration**: `android/app/build.gradle`
- **Permissions**: `android/app/src/main/AndroidManifest.xml`
- **Firebase**: `android/app/google-services.json`

#### iOS Configuration  
- **Build Settings**: `ios/Runner.xcodeproj/project.pbxproj`
- **Info.plist**: `ios/Runner/Info.plist`
- **Firebase**: `ios/Runner/GoogleService-Info.plist`

#### Web Configuration
- **HTML Template**: `web/index.html`
- **Firebase Config**: Add to `web/index.html`

---

## 🚀 Deployment

### Build for Production

#### Android (APK/AAB)
```bash
# Build APK
flutter build apk --release

# Build App Bundle (recommended for Play Store)
flutter build appbundle --release
```

#### iOS (IPA)
```bash
# Build for iOS
flutter build ios --release

# Create archive in Xcode
open ios/Runner.xcworkspace
```

#### Web
```bash
# Build for web
flutter build web --release

# Deploy to Firebase Hosting
firebase deploy --only hosting
```

### Firebase Deployment

#### Cloud Functions
```bash
cd firebase/functions
npm run deploy
```

#### Firestore Rules & Indexes
```bash
firebase deploy --only firestore:rules,firestore:indexes
```

#### Complete Firebase Deployment
```bash
firebase deploy
```

---

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### Development Process

1. **Fork the Repository**
   ```bash
   git fork https://github.com/yourusername/EatSafeAI.git
   ```

2. **Create a Feature Branch**
   ```bash
   git checkout -b feature/amazing-new-feature
   ```

3. **Make Your Changes**
   - Follow the existing code style and conventions
   - Add tests for new functionality
   - Update documentation as needed

4. **Commit Your Changes**
   ```bash
   git commit -m "Add amazing new feature"
   ```

5. **Push to Your Fork**
   ```bash
   git push origin feature/amazing-new-feature
   ```

6. **Create a Pull Request**
   - Provide a clear description of your changes
   - Reference any related issues
   - Ensure all tests pass

### Code Style Guidelines

- Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful variable and function names
- Add comments for complex logic
- Maintain consistent indentation (2 spaces)

### Reporting Issues

- Use the [GitHub Issues](https://github.com/yourusername/EatSafeAI/issues) page
- Provide detailed reproduction steps
- Include device/platform information
- Add screenshots or logs when helpful

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### MIT License Summary

- ✅ Commercial use
- ✅ Modification
- ✅ Distribution  
- ✅ Private use
- ❌ Liability
- ❌ Warranty

---

## 👥 Authors & Contributors

### Core Team
- **Hannah Durchschlag**
- **Moritz Enderle**

### Contributing
We thank all contributors who have helped make EatSafeAI better. See our [Contributors](https://github.com/yourusername/EatSafeAI/contributors) page for a full list.

---

## 🙏 Acknowledgements

### Frameworks & Libraries
- **[FlutterFlow](https://flutterflow.io/)** - Visual development platform that accelerated our development
- **[Firebase](https://firebase.google.com/)** - Comprehensive backend platform powering our app
- **[Flutter](https://flutter.dev/)** - Google's UI toolkit for building beautiful, natively compiled applications

### AI & Machine Learning
- **[Google Generative AI](https://ai.google.dev/)** - Advanced AI capabilities for intelligent recommendations
- **[LangChain](https://langchain.com/)** - Framework for developing applications with language models
- **[OpenAI](https://openai.com/)** - AI research and deployment company

### Design & Icons
- **[Font Awesome](https://fontawesome.com/)** - Icon library for beautiful UI elements
- **[Google Fonts](https://fonts.google.com/)** - Typography that enhances user experience
- **[Lottie](https://lottiefiles.com/)** - Animation library for engaging micro-interactions

### Special Thanks
- The Flutter community for continuous support and amazing packages
- Firebase team for providing robust backend infrastructure  
- All beta testers who provided valuable feedback during development

---

## 📞 Support & Contact

### Getting Help

- **Documentation**: Check this README and inline code comments
- **Issues**: Report bugs on our [GitHub Issues](https://github.com/yourusername/EatSafeAI/issues) page
- **Discussions**: Join conversations in [GitHub Discussions](https://github.com/yourusername/EatSafeAI/discussions)

### Contact Information

- **Email**: support@eatsafeai.com
- **Website**: [www.eatsafeai.com](https://www.eatsafeai.com)
- **Social Media**: Follow us for updates and tips

### Business Inquiries

For partnerships, licensing, or business-related questions:
- **Business Email**: business@eatsafeai.com

---

## 🔮 Roadmap

### Upcoming Features

- **🌍 Multi-language Support**: Localization for global users
- **📊 Advanced Analytics**: Detailed nutrition tracking and insights  
- **🍽️ Meal Planning**: AI-powered weekly meal planning
- **👨‍👩‍👧‍👦 Family Profiles**: Support for multiple family members
- **🛒 Shopping Lists**: Automated grocery lists based on meal plans
- **⌚ Wearable Integration**: Apple Watch and Android Wear support

### Technical Improvements

- **⚡ Performance Optimization**: Faster load times and smoother animations
- **🔄 Offline-First Architecture**: Enhanced offline capabilities
- **🛡️ Enhanced Security**: Additional security measures and compliance
- **📱 Platform Expansion**: Desktop applications for Windows, macOS, and Linux

---

*Made with ❤️ by the EatSafeAI Team*
