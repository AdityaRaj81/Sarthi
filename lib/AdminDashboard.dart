import 'package:flutter/material.dart';
import 'header.dart'; // Import your custom header
// Import the footer

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(context), // Call the AppHeader
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Hello VAGHELA MOXIKA',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Active',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  // Users icon with popup for Add New / Show Existing
                  buildPopupDashboardItem(context, Icons.person, 'Users', '/adduser', '/existinguser'),
                  // Routes icon with popup for Add New / Show Existing
                  buildPopupDashboardItem(context, Icons.location_on, 'Routes', '/addroutes', '/existingroutes'),
                  // Drivers icon with popup for Add New / Show Existing
                  buildPopupDashboardItem(context, Icons.directions_bus, 'Drivers', '/adddriver', '/existingdriver'),
                  // Fee Details navigation (Direct)
                  buildDirectDashboardItem(context, Icons.attach_money, 'Fee Details', '/feedetails'),
                  // Updates navigation (Direct)
                  buildDirectDashboardItem(context, Icons.update, 'Updates', '/updates'),
                  // Feedback navigation (Direct)
                  buildDirectDashboardItem(context, Icons.feedback, 'Feedbacks', '/feedback'),
                  // The SOS icon will be placed at the bottom separately
                  const SizedBox.shrink(), // Placeholder for spacing
                ],
              ),
            ),
            // SOS icon box at the bottom center
            Center(
              child: buildSosDashboardItem(context),
            ),
            const SizedBox(height: 10), // Spacing below the SOS icon
            //const Footer(), // Add Footer here, below all content
          ],
        ),
      ),
      //bottomNavigationBar: const Footer(), // Add Footer here
    );
  }

  // Function to build SOS dashboard item
  Widget buildSosDashboardItem(BuildContext context) {
    return Card(
      color: Colors.red, // Set the background color to red
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to the SOS page (you can replace with the correct route)
          Navigator.pushNamed(context, '/sos');
        },
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.sos, size: 20, color: Colors.yellow), // Icon color is white for contrast
              SizedBox(height: 5),
              Text(
                'SOS',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.yellowAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build dashboard items with popup for Add New / Show Existing
  Widget buildPopupDashboardItem(BuildContext context, IconData icon, String title, String addRoute, String showRoute) {
    return Card(
      color: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          // Show popup with two options: Add New and Show Existing
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.add),
                      title: Text('Add New $title'),
                      onTap: () {
                        Navigator.pop(context); // Close the modal
                        Navigator.pushNamed(context, addRoute);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.list),
                      title: Text('Show Existing $title'),
                      onTap: () {
                        Navigator.pop(context); // Close the modal
                        Navigator.pushNamed(context, showRoute);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50), // Decreased icon size to fit better
              const SizedBox(height: 1),
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build dashboard items that directly navigate to a page
  Widget buildDirectDashboardItem(BuildContext context, IconData icon, String title, String route) {
    return Card(
      color: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          // Directly navigate to the respective page
          Navigator.pushNamed(context, route);
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48), // Decreased icon size to fit better
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
