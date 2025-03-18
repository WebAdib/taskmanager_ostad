import 'package:flutter/material.dart';

import '../widgets/status_card.dart';
import '../widgets/task_card.dart';

class CanceledTaskScreen extends StatefulWidget {
  const CanceledTaskScreen({super.key});

  @override
  State<CanceledTaskScreen> createState() => _CanceledTaskScreenState();
}

class _CanceledTaskScreenState extends State<CanceledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
                itemCount: 1,
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
