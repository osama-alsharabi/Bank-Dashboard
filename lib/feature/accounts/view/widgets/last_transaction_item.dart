import 'package:flutter/material.dart';

class LastTransactionItem extends StatelessWidget {
  const LastTransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
    );
  }
}
