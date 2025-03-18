import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String title;
  final int count;

  const StatusCard({
    super.key,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.teal.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            Text(
              count < 10 ? '0$count' : '$count',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
