import 'package:flutter/material.dart';

class DateChip extends StatelessWidget {
  const DateChip({Key? key, required this.date}) : super(key: key);
  final String date;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(date),
    );
  }
}
