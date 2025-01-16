import 'package:embroidery_rate_counter/add_design.dart';
import 'package:embroidery_rate_counter/product_grid_page.dart';
import 'package:flutter/material.dart';

import 'modules/rate_module/calculator.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  // Screens for each menu
  final List<Widget> _screens = [
    Calculator(),
    AddDesign(),
    ProductGridPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Track the selected index
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected index
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Design',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List of Design',
          ),
        ],
      ),
    );
  }
}

// Add Design Screen
class AddDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Add Design Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

