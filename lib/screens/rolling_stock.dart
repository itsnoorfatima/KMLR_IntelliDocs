import 'package:flutter/material.dart';

class RollingStockEngineersScreen extends StatelessWidget {
  final List<String> updates = [
    "🔧 New braking system design change – effective Oct.",
    "📦 Spare part ABC already ordered by Procurement.",
  ];

  final List<String> jobCards = [
    "Check brake system – Pending",
    "Update motor calibration – Completed",
    "Inspect couplers – Pending",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text("Rolling-Stock Engineers"),
          backgroundColor: Colors.teal.shade700,
          elevation: 6,
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white, // 👈 Active tab text white
            unselectedLabelColor:
                Colors.white70, // 👈 Inactive tab slightly faded
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            tabs: const [
              Tab(text: "Updates"),
              Tab(text: "Job Cards"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Engineering updates feed
            ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: updates.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal.shade100,
                      child: const Icon(Icons.build, color: Colors.teal),
                    ),
                    title: Text(
                      updates[index],
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                );
              },
            ),

            // Job Cards Tab
            ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: jobCards.length,
              itemBuilder: (context, index) {
                bool completed = jobCards[index].contains("Completed");
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal.shade100,
                      child: const Icon(Icons.assignment, color: Colors.teal),
                    ),
                    title: Text(
                      jobCards[index],
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(
                      completed ? Icons.check_circle : Icons.pending_actions,
                      color: completed ? Colors.green : Colors.orange,
                      size: 28,
                    ),
                  ),
                );
              },
            ),
          ],
        ),

        // Floating action button for notifications
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.teal.shade700,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("New parts/design notifications here"),
              ),
            );
          },
          icon: const Icon(Icons.notifications, color: Colors.white),
          label: const Text("Notifications"),
        ),
      ),
    );
  }
}
