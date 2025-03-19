# Investment Management App

## Overview

The **Investment Management App** is a Flutter application designed with a clean architecture approach, incorporating state management, secure authentication, and API integration. The app supports multilingual functionality (English & Arabic) with RTL layout support for Arabic.

## Features

- **Secure Authentication** (Biometric & PIN-based authentication with secure storage)
- **Investment Dashboard** (Displays welcome message & investment summary)
- **Feature Screen** (Fetches investment opportunities from a simulated API)
- **Localization Support** (English & Arabic with RTL layout and persistent language selection)
- **State Management** (Uses Riverpod for efficient state management)

## Tech Stack & Dependencies

### Core Dependencies

- `flutter_riverpod`: State management
- `flutter_secure_storage`: Secure authentication storage
- `local_auth`: Biometric authentication
- `dio`: API integration
- `go_router`: Navigation
- `intl`: Localization support
- `syncfusion_flutter_pdfviewer`: PDF viewing
- `flutter_screenutil`: Responsive UI
- `pin_code_fields`: PIN authentication UI
- `freezed_annotation` & `json_annotation`: Code generation & serialization

### Dev Dependencies

- `build_runner`: Code generation
- `freezed`: Immutable state handling
- `json_serializable`: JSON serialization
- `flutter_lints`: Code linting
- `flutter_test`: Unit testing

## Project Structure

The project follows a clean architecture approach:

```
lib/
├── core/            # Common utilities, theme, and configurations
├── data/            # API services, repositories, and data models
├── domain/          # Business logic, use cases, and entities
├── presentation/    # UI components, screens, and providers
│   ├── screens/     # Individual screens (Login, Dashboard, Feature)
│   ├── widgets/     # Reusable UI components
│   ├── providers/   # Riverpod providers for state management
│
├── main.dart        # App entry point
```

## Installation & Setup

### Prerequisites

- Flutter SDK 3.6.1+
- Dart SDK 3.6.1+

### Steps

1. Clone the repository:
   ```bash
   git clone [your-repository-url]
   ```
2. Navigate to the project directory:
   ```bash
   cd investment_app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## License

This project is no any License.

