import 'package:flutter/material.dart';

import '../widgets/status_card.dart';
import '../widgets/task_card.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
                itemCount: 2,
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
