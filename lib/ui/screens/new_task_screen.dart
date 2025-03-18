import 'package:flutter/material.dart';

import '../widgets/status_card.dart';
import '../widgets/task_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildCardSummerySection(),
          SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return TaskCard();
                },
                separatorBuilder: (context, index) => SizedBox(height: 1)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  // for cards summery section
  Widget _buildCardSummerySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatusCard(
            title: 'New Task',
            count: 12,
          ),
          StatusCard(
            title: 'In Progress',
            count: 3,
          ),
          StatusCard(
            title: 'Completed',
            count: 6,
          ),
          StatusCard(
            title: 'Canceled',
            count: 1,
          ),
        ],
      ),
    );
  }
}
