<!--- 
# sarthi

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
--->

# Sarthi - A Complete Transportation Management System

Sarthi is a comprehensive student transportation management system designed to streamline operations such as managing users, routes, drivers, fee statuses, and emergency handling (SOS). This Flutter-based project is built for educational institutions to ensure smooth communication and management between administrators, drivers, and students.

## Features

1. **User Management**
   - Add and view users, including their details like name, enrollment number, contact information, boarding point, etc.
   - Manage and track drivers, routes, and other essential personnel.

2. **Routes Management**
   - Add new routes and view existing routes.
   - Easy interface for administrators to manage transportation routes.

3. **Fee Management**
   - View fee status across various categories (fully paid, partly paid, EMI users).
   - Verify fee payment for individual students based on enrollment number or institute.
   - Generate fee receipts.

4. **Emergency (SOS) System**
   - Real-time SOS alerts with user details, bus numbers, and routes.
   - SOS history for tracking past emergencies and actions taken.

5. **Feedback System**
   - Collect and view feedback from users.
   - Feedback management interface for administrators to analyze user input.

6. **Updates**
   - Administrators can post updates for students and drivers.
   - Update history for record keeping.

## Tech Stack

- **Flutter**: Frontend for mobile app development.
- **Dart**: Core language for Flutter development.
- **Firebase**: Backend for user authentication and database management.

## Pages

1. **Admin Dashboard**: Main control panel for managing users, routes, drivers, fee status, and emergency (SOS) situations.
   
2. **Add/Existing User**: Add new users to the system and view existing users.

3. **Add/Existing Driver**: Add new drivers and view details of current drivers.

4. **Routes Management**: Manage and view existing routes.

5. **Fee Management**:
   - View fee statuses (fully paid, partially paid, etc.).
   - Verify fee status by searching with enrollment number or institute.
   - Generate fee receipts.

6. **SOS Screen**: Displays live SOS alerts with user information and history of previous emergencies.

7. **Feedback**: View and manage user feedback with 20 demo entries provided for testing.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/sarthi.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Demo Data

- The app includes dummy data for users, drivers, routes, fee statuses, and feedback for testing purposes.

## Future Improvements

- Live location tracking of buses.
- Notifications for updates, route changes, or emergencies.
- Support for multiple institutes and broader customization options.

## License

This project is open-sourced under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

Built with ❤️ by Eric and the team.
