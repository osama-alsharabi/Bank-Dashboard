import 'package:bank_dashboard/feature/loans/view/widgets/loans_body.dart';
import 'package:flutter/material.dart';

class LoansView extends StatelessWidget {
  const LoansView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoandsBody());
  }
}
