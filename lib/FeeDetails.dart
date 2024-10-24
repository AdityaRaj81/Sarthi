import 'package:flutter/material.dart';

class FeeDetails extends StatefulWidget {
  const FeeDetails({super.key});

  @override
  _FeeDetailsState createState() => _FeeDetailsState();
}

class _FeeDetailsState extends State<FeeDetails> {
  // Dummy data for fee status
  final int totalUsers = 200;
  final int fullyPaidUsers = 150;
  final int partlyPaidUsers = 30;
  final int emiUsers = 20;
  bool _isViewFeeStatusExpanded = false;
  bool _isVerifyFeeStatusExpanded = false;
  bool _isGenerateReceiptExpanded = false;
  String? enrollmentNo;
  String? institute;
  Map<String, dynamic>? selectedUserFeeDetails;

  // Dummy fee details for a user
  final Map<String, Map<String, dynamic>> feeData = {
    '101': {
      'name': 'Akkta Yadav',
      'institute': 'Institute of Technology',
      'totalFee': 50000,
      'paidFee': 30000,
      'dueFee': 20000,
      'status': 'Partly Paid',
    },
    '102': {
      'name': 'Priya Gupta',
      'institute': 'Business School',
      'totalFee': 40000,
      'paidFee': 40000,
      'dueFee': 0,
      'status': 'Fully Paid',
    },
    '103': {
      'name': 'Vikram Singh',
      'institute': 'Medical College',
      'totalFee': 60000,
      'paidFee': 20000,
      'dueFee': 40000,
      'status': 'EMI',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fee Details'),
        backgroundColor: Colors.yellow,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // View Fee Status Section
            ExpansionTile(
              title: const Text('View Fee Status'),
              initiallyExpanded: _isViewFeeStatusExpanded,
              onExpansionChanged: (expanded) {
                setState(() {
                  _isViewFeeStatusExpanded = expanded;
                });
              },
              children: [
                ListTile(
                  title: Text('Total Users: $totalUsers'),
                ),
                ListTile(
                  title: Text('Fully Paid Users: $fullyPaidUsers'),
                ),
                ListTile(
                  title: Text('Partly Paid Users: $partlyPaidUsers'),
                ),
                ListTile(
                  title: Text('Users on EMI: $emiUsers'),
                ),
                ListTile(
                  title: Text('Pending Payments: ${totalUsers - fullyPaidUsers}'),
                ),
              ],
            ),

            // Verify Fee Status Section
            ExpansionTile(
              title: const Text('Verify Fee Status'),
              initiallyExpanded: _isVerifyFeeStatusExpanded,
              onExpansionChanged: (expanded) {
                setState(() {
                  _isVerifyFeeStatusExpanded = expanded;
                });
              },
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Enrollment Number'),
                    onChanged: (value) {
                      enrollmentNo = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Institute'),
                    onChanged: (value) {
                      institute = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedUserFeeDetails = feeData[enrollmentNo];
                      });
                    },
                    child: const Text('View Fee Status'),
                  ),
                ),
                if (selectedUserFeeDetails != null) ...[
                  ListTile(
                    title: Text('Name: ${selectedUserFeeDetails!['name']}'),
                  ),
                  ListTile(
                    title: Text(
                        'Institute: ${selectedUserFeeDetails!['institute']}'),
                  ),
                  ListTile(
                    title: Text(
                        'Total Fee: ₹${selectedUserFeeDetails!['totalFee']}'),
                  ),
                  ListTile(
                    title: Text(
                        'Paid Fee: ₹${selectedUserFeeDetails!['paidFee']}'),
                  ),
                  ListTile(
                    title: Text(
                        'Due Fee: ₹${selectedUserFeeDetails!['dueFee']}'),
                  ),
                  ListTile(
                    title: Text(
                        'Status: ${selectedUserFeeDetails!['status']}'),
                  ),
                ],
              ],
            ),

            // Generate Fee Receipt Section
            ExpansionTile(
              title: const Text('Generate Fee Receipt'),
              initiallyExpanded: _isGenerateReceiptExpanded,
              onExpansionChanged: (expanded) {
                setState(() {
                  _isGenerateReceiptExpanded = expanded;
                });
              },
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Enrollment Number'),
                    onChanged: (value) {
                      enrollmentNo = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Institute'),
                    onChanged: (value) {
                      institute = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedUserFeeDetails = feeData[enrollmentNo];
                      });
                    },
                    child: const Text('Generate Receipt'),
                  ),
                ),
                if (selectedUserFeeDetails != null)
                  Card(
                    margin: const EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Receipt'),
                          const Divider(),
                          Text('Name: ${selectedUserFeeDetails!['name']}'),
                          Text(
                              'Institute: ${selectedUserFeeDetails!['institute']}'),
                          Text(
                              'Total Fee: ₹${selectedUserFeeDetails!['totalFee']}'),
                          Text('Paid Fee: ₹${selectedUserFeeDetails!['paidFee']}'),
                          Text('Due Fee: ₹${selectedUserFeeDetails!['dueFee']}'),
                          const SizedBox(height: 10),
                          Text('Status: ${selectedUserFeeDetails!['status']}'),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Code to save or print the receipt can go here
                            },
                            child: const Text('Download Receipt'),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
