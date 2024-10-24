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

# Sarth - A Complete Transportation Management System

Sarth is a comprehensive transportation management system designed for educational institutes, aimed at managing routes, drivers, user records, emergency alerts (SOS), and fee statuses. This system provides an efficient solution to handle the various operations required in managing a transportation network. It is built using **Flutter** for the frontend and offers an intuitive, user-friendly interface for both admins and users.

## Key Features

- **Admin Dashboard**: A dynamic dashboard that allows the admin to manage users, routes, drivers, fee details, and feedback from a single place.
- **User Management**: Admin can add new users, view existing users, and manage their details.
- **Route Management**: Ability to add new routes and view existing routes.
- **Driver Management**: Add new drivers and view details of all the drivers in the system.
- **Emergency (SOS)**: In case of emergencies, users can trigger SOS alerts, and the admin can view the details of the user, including the route and bus number. All SOS alerts are logged in history for later review.
- **Fee Management**: View the fee status of all users, verify individual user's fee status, and generate fee receipts for users. Options include viewing fully paid users, partly paid users, users with EMI plans, and more.
- **Feedback System**: Admin can view feedback from users and respond accordingly.
- **Update History**: Keeps track of all updates made in the system for audit and review.

## Pages & Modules

### Admin Dashboard
- A grid-based dashboard with modules for managing Users, Routes, Drivers, Fee Details, Updates, Feedbacks, and SOS alerts.
  
### User Management
- **Add New User**: Form-based interface to add users with fields for full name, enrollment number, institute, course, address, contact details, and boarding point.
- **View Existing Users**: Lists all existing users with options to edit or remove users.

### Route Management
- **Add New Route**: Allows admin to define new bus routes with start and end points.
- **View Existing Routes**: Displays a list of all available routes.

### Driver Management
- **Add New Driver**: A form to register new drivers.
- **View Existing Drivers**: Displays a list of all registered drivers.

### SOS Management
- Displays live SOS alerts in real-time and stores history for future reference. Admin can view user details, including route and bus number, when SOS is triggered.

### Fee Management
- **View Fee Status**: Summarizes fee status for all users, including fully paid, partly paid, and users on EMI.
- **Verify Fee Status**: Allows the admin to verify a user's fee status by searching using enrollment number or institute details.
- **Generate Receipt**: After fee verification, admin can generate and print receipts for users.

### Feedback
- Displays feedback provided by users with detailed user information and feedback content.

### Updates
- Logs and displays all updates made in the system, providing transparency and a historical record.

## Getting Started

### Prerequisites
- [Flutter](https://flutter.dev/docs/get-started/install) installed on your system.
- Android Studio or Visual Studio Code for running and debugging the app.

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/sarth.git
   ```
2. Navigate to the project directory:
   ```bash
   cd sarth
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

### Project Structure

```
lib/
│── AdminDashboard.dart
│── AddUser.dart
│── AddDriver.dart
│── ExistingUser.dart
│── ExistingDriver.dart
│── AddRoute.dart
│── ExistingRoute.dart
│── SOSScreen.dart
│── FeeDetails.dart
│── Feedback.dart
│── Updates.dart
│── main.dart
└── ProfilePage.dart
```

## Contributing

Contributions are welcome! If you have any suggestions or improvements, feel free to submit a pull request.

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

## License

This project is licensed under the MIT License.

---

Happy Coding!
