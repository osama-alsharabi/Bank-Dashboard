import 'package:bank_dashboard/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BankDashboard());
}

class BankDashboard extends StatelessWidget {
  const BankDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: light());
  }
}
