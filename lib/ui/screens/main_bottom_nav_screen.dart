import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Bottom Navigation'),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
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
