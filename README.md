# FinFit 🏋️‍♂️💰

A comprehensive Flutter application that seamlessly integrates **fitness tracking**, **nutrition management**, and **personal finance** into one powerful platform. FinFit helps users maintain a healthy lifestyle while keeping their finances in check.

> **Repository**: [https://github.com/Christinvs12/finfit](https://github.com/Christinvs12/finfit)  
> **Original Author**: [@Christinvs12](https://github.com/Christinvs12)

## ✨ Features

### 🏃‍♂️ Fitness & Workout Management
- **Personalized Workout Recommendations** based on nutrition intake and fitness level
- **Custom Workout Creation** with exercise library and GIF demonstrations
- **Workout Progress Tracking** with completion history
- **Adaptive Training Plans** for different fitness levels (Beginner, Intermediate)
- **Multiple Workout Types**: Weight Loss, Weight Gain, Strength Building, Endurance, Regular Fitness

### 🥗 Nutrition Tracking
- **Daily Nutrition Monitoring** (Calories, Protein, Carbs, Fat)
- **Smart Food Recommendations** based on remaining daily nutritional needs
- **Water Intake Tracking** with daily goals
- **Nutrition Analytics** with weekly progress charts
- **TDEE Calculation** for personalized calorie goals

### 💳 Personal Finance Management
- **Expense Tracking** with 9 predefined categories
- **Receipt Scanning** using ML Kit for automatic expense entry
- **Budget Management** with visual progress indicators
- **Income Tracking** and analysis
- **Financial Analytics** with detailed charts and insights
- **Bill Reminders** to never miss a payment
- **Monthly/Daily Expense Reports**

### 🔐 User Management
- **Firebase Authentication** with Google Sign-in support
- **Secure Data Storage** using Cloud Firestore
- **User Profile Management** with personal metrics
- **Cross-platform Synchronization**

## 🛠️ Technologies Used

- **Framework**: Flutter 3.6.0+
- **Backend**: Firebase (Auth, Firestore, Storage)
- **State Management**: StatefulWidget with setState
- **Charts**: FL Chart for data visualization
- **ML/AI**: Google ML Kit for text recognition
- **Authentication**: Firebase Auth with Google Sign-in
- **Image Processing**: Image Picker, Cached Network Image

## 📱 Supported Platforms

- Android
- iOS
- Web
- Windows
- macOS
- Linux

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.6.0 or higher)
- Dart SDK
- Firebase account
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Christinvs12/finfit.git
   cd finfit
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Firebase Setup**
   - Create a new Firebase project
   - Enable Authentication, Firestore, and Storage
   - Download and place `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
   - Update `firebase_options.dart` with your configuration

4. **Run the app**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── splash_screen.dart        # Loading screen
├── loginpage.dart           # Authentication screens
├── signuppage.dart
├── homepage.dart            # Main dashboard
├── financeHome.dart         # Finance module entry
├── expenseTracking.dart     # Expense management
├── incomeTracking.dart      # Income tracking
├── financeAnalysis.dart     # Financial analytics
├── billReminders.dart       # Bill management
├── nutritionpage.dart       # Nutrition tracking
├── workoutpage.dart         # Workout management
├── customworkout.dart       # Custom workout creation
├── foodrecommend.dart       # Food recommendation system
├── userscreen.dart          # User profile
├── firebase_options.dart    # Firebase configuration
└── firebase_services.dart   # Firebase utilities
```

## 🔧 Configuration

### Firebase Services
- **Authentication**: Email/Password and Google Sign-in
- **Firestore**: User data, expenses, workouts, nutrition
- **Storage**: User images and receipts

### API Integrations
- Google ML Kit for receipt text recognition
- Firebase Cloud Functions (if applicable)

## 📊 Data Models

### User Data Structure
```
users/{userId}/
├── profile/               # Personal information
├── finance/              # Financial data
│   ├── expense_tracker/  # Daily expenses
│   ├── expense_totals/   # Monthly totals
│   ├── budgets/         # Budget settings
│   └── income/          # Income records
├── nutrition/           # Nutrition data
│   └── daily_totals/   # Daily nutrition totals
└── workouts/           # Workout history
    └── completed/      # Completed workouts
```

## 🤝 Contributing

We welcome contributions to FinFit! This project is actively maintained and we appreciate any help to make it better.

### How to Contribute

1. Fork the repository from [https://github.com/Christinvs12/finfit](https://github.com/Christinvs12/finfit)
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request to the main repository

### Contribution Guidelines

- Follow Flutter best practices and coding standards
- Test your changes thoroughly before submitting
- Update documentation if your changes affect user-facing features
- Keep commits focused and provide clear commit messages
- Ensure your code works across different platforms (Android, iOS, Web)

### Issues and Bug Reports

If you find a bug or have a feature request, please open an issue at [https://github.com/Christinvs12/finfit/issues](https://github.com/Christinvs12/finfit/issues)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- Google ML Kit for text recognition
- FL Chart for beautiful charts
- The open-source community for various packages

## 📞 Support

For support, please open an issue in the GitHub repository at [https://github.com/Christinvs12/finfit/issues](https://github.com/Christinvs12/finfit/issues) or contact the development team.

### Getting Help

- **Bug Reports**: Use the issue tracker for bug reports with detailed information
- **Feature Requests**: Submit feature requests through GitHub issues
- **Documentation**: Check this README and code comments for implementation details
- **Community**: Engage with other contributors through GitHub discussions

---

**FinFit** - Your all-in-one solution for fitness, nutrition, and financial wellness! 🌟
