import 'package:flutter/material.dart';

class SchedulingScreen extends StatelessWidget {
  const SchedulingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scheduling Desk"),
        backgroundColor: Colors.teal.shade700,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            "📅 Upcoming Train Schedule",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Train Schedule Cards
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.train, color: Colors.blue),
              title: const Text("Train #204 - Departure: 10:30 AM"),
              subtitle: const Text("Platform 2 → City Central"),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.train, color: Colors.blue),
              title: const Text("Train #301 - Departure: 11:15 AM"),
              subtitle: const Text("Platform 4 → North Terminal"),
              trailing: const Icon(Icons.more_vert),
            ),
          ),

          const SizedBox(height: 20),

          // Add Schedule Button
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white),
            label: const Text(
              "Add Schedule",
              style: TextStyle(color: Colors.white), // ✅ White text
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 14),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
