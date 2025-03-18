import 'package:flutter/material.dart';

import '../widgets/status_card.dart';
import '../widgets/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return TaskCard();
                },
                separatorBuilder: (context, index) => SizedBox(height: 1)),
          ),
        ],
      ),
    );
  }
}
