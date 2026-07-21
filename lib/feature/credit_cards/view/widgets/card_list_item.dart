import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  const CardListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(children: []),
    );
  }
}
