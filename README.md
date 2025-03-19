# Flutter Multilingual App

A Flutter application with multilingual support (English and Arabic) featuring RTL layout for Arabic language.

## Features

- Language switching between English and Arabic
- Persistent language selection storage
- RTL layout support for Arabic
- Localized screens:
    - Login screen
    - Dashboard
    - PDF viewer
    - PIN setup and entry screens

## Development Process

### Architecture
This project follows [describe your architecture, e.g., Clean Architecture, BLoC pattern, etc.]

### Localization Strategy
The app uses a custom translation service to handle language switching between English and Arabic. The selected language is stored in [localStorage/SharedPreferences] and applied throughout the app.

### External Tools and Libraries
- `flutter_localizations` - For base localization support
- [List any other libraries you're using like `shared_preferences`, `get_it`, etc.]

## Getting Started

### Prerequisites
- Flutter SDK version X.X.X or higher
- Dart SDK version X.X.X or higher
- [Any other dependencies]

### Installation
1. Clone the repository:
   ```
   git clone [your-repository-url]
   ```

2. Navigate to the project directory:
   ```
   cd [project-directory]
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Run the app:
   ```
   flutter run
   ```

## Project Structure