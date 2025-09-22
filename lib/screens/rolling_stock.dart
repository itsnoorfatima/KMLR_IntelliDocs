import 'package:flutter/material.dart';

class RollingStockEngineersScreen extends StatefulWidget {
  const RollingStockEngineersScreen({super.key});

  @override
  State<RollingStockEngineersScreen> createState() =>
      _RollingStockEngineersScreenState();
}

class _RollingStockEngineersScreenState
    extends State<RollingStockEngineersScreen> {
  int _currentIndex = 0;

  final List<String> updates = [
    "New braking system design change – effective Oct.",
    "Spare part ABC already ordered by Procurement.",
  ];

  final List<String> jobCards = [
    "Check brake system – Pending",
    "Update motor calibration – Completed",
    "Inspect couplers – Pending",
  ];

  // Dummy screens for bottom nav navigation (replace with your actual screens)
  final List<Widget> _screens = const [
    Placeholder(), // Home
    Placeholder(), // Search
    Placeholder(), // Docs
    Placeholder(), // Profile
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
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
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

        // Floating action button with white label text
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.teal.shade700,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("New parts/design notifications here"),
                backgroundColor: Colors.teal,
              ),
            );
          },
          icon: const Icon(Icons.notifications, color: Colors.white),
          label: const Text(
            "Notifications",
            style: TextStyle(color: Colors.white), // ✅ White label text
          ),
        ),

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.teal.shade700, // active label color
          unselectedItemColor: Colors.grey, // inactive label color
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });

            // Navigate to the respective screen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => _screens[index]),
            );
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: "Docs",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
