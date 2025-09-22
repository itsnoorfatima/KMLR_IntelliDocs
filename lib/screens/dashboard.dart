import 'package:flutter/material.dart';
import 'package:kmrl_intellidocs/screens/station_controllers.dart';
import 'package:kmrl_intellidocs/screens/rolling_stock.dart';
import 'package:kmrl_intellidocs/screens/finance.dart';
import 'package:kmrl_intellidocs/screens/scheduling.dart';
import 'package:kmrl_intellidocs/screens/maintenance.dart';
import 'package:kmrl_intellidocs/screens/legal.dart';
import 'package:kmrl_intellidocs/screens/emanager.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> roles = [
    {
      "title": "Station Controllers",
      "icon": Icons.train,
      "page": StationControllersScreen(),
    },
    {
      "title": "Rolling-Stock Engineers",
      "icon": Icons.build,
      "page": RollingStockEngineersScreen(),
    },
    {
      "title": "Finance Officers",
      "icon": Icons.account_balance_wallet,
      "page": ProcurementScreen(),
    },
    {"title": "HR", "icon": Icons.people, "page": SchedulingScreen()},
    {
      "title": "Safety & Compliance Officers",
      "icon": Icons.shield,
      "page": MaintenanceScreen(),
    },
    {
      "title": "Legal & Policy Teams",
      "icon": Icons.gavel,
      "page": PassengerCommScreen(),
    },
    {
      "title": "Executive Directors",
      "icon": Icons.workspace_premium,
      "page": EnergyManagerScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Color uiPrimaryColor = Colors.teal.shade700; // UI theme color

    return Scaffold(
      backgroundColor: Colors.white, // ✅ White background
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Role Selection",
          style: TextStyle(
            color: uiPrimaryColor, // ✅ UI primary color
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: uiPrimaryColor,
        ), // optional: back button color
      ),
      body: Container(
        color: Colors.white, // ensures the main body is white
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: GridView.builder(
          padding: const EdgeInsets.only(top: 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemCount: roles.length,
          itemBuilder: (context, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => roles[index]["page"]),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.95),
                      Colors.teal.shade50.withOpacity(0.8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(3, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(roles[index]["icon"], size: 50, color: uiPrimaryColor),
                    const SizedBox(height: 12),
                    Text(
                      roles[index]["title"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: uiPrimaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
