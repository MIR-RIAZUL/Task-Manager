import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/progress_task_screen.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    // Placeholder screens — replace with actual screens as needed
    Center(child: Text('New tasks')),
    ProgressTaskScreen(),
    Center(child: Text('Cancelled tasks')),
    Center(child: Text('Completed tasks')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: 'New',
          ),

          NavigationDestination(icon: Icon(Icons.refresh), label: 'progress'),
          NavigationDestination(icon: Icon(Icons.close), label: 'cancelled'),
          NavigationDestination(icon: Icon(Icons.done_all), label: 'completed'),
        ],
      ),
    );
  }
}
