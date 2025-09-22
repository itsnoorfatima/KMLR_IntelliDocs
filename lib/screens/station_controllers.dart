import 'package:flutter/material.dart';
import 'dart:ui';

class StationControllersScreen extends StatefulWidget {
  const StationControllersScreen({super.key});

  @override
  State<StationControllersScreen> createState() =>
      _StationControllersScreenState();
}

class _StationControllersScreenState extends State<StationControllersScreen> {
  int _currentIndex = 0;

  final List<String> alerts = const [
    "Train #204 unavailable till 3 PM (Brake issue).",
    "Fire drill at Station X, follow evacuation guideline.",
  ];

  // Dummy screens for bottom nav (replace with your actual screens)
  final List<Widget> _screens = const [
    Placeholder(), // Home
    Placeholder(), // Search
    Placeholder(), // Docs
    Placeholder(), // Profile
  ];

  @override
  Widget build(BuildContext context) {
    final Color primaryTeal = Colors.teal.shade700;

    return Scaffold(
      backgroundColor: Colors.white,

      // ✅ AppBar aligned to left like other screens
      appBar: AppBar(
        title: const Text(
          "Station Controllers",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: primaryTeal,
        elevation: 6,
        centerTitle: false, // left-align title
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔎 Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search trains/stations",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search, color: primaryTeal),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// 🚨 Alerts Heading
            const Text(
              "🚨 Latest Alerts",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 12),

            /// ⚠️ Alerts List
            Expanded(
              child: ListView.builder(
                itemCount: alerts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.85),
                            border: Border.all(
                              color: Colors.teal.shade100,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.15),
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: const Icon(
                              Icons.warning_amber_rounded,
                              color: Colors.redAccent,
                              size: 32,
                            ),
                            title: Text(
                              alerts[index],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            trailing: ElevatedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Acknowledged ✅"),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryTeal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                              ),
                              child: const Text(
                                "Acknowledge",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // ✅ Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: primaryTeal,
        unselectedItemColor: Colors.grey,
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
          BottomNavigationBarItem(icon: Icon(Icons.description), label: "Docs"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
