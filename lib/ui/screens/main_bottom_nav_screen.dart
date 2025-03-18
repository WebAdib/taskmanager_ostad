import 'package:flutter/material.dart';

import '../widgets/tm_appbar.dart';
import 'new_task_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    NewTaskScreen(),
    NewTaskScreen(),
    NewTaskScreen(),
    NewTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            _selectedIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.add_task_rounded), label: 'New Task'),
            NavigationDestination(
                icon: Icon(Icons.incomplete_circle_rounded), label: 'Progress'),
            NavigationDestination(
                icon: Icon(Icons.task_alt_rounded), label: 'Completed'),
            NavigationDestination(
                icon: Icon(Icons.cancel_rounded), label: 'Canceled'),
          ]),
    );
  }
}
