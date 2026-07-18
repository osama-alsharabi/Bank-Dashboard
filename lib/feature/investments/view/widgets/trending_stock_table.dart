import 'package:bank_dashboard/feature/investments/view/widgets/trending_stock_table_header.dart';
import 'package:flutter/material.dart';

class TrendingStockTable extends StatelessWidget {
  const TrendingStockTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        trendingStrockTableHeader(context),
      ],
    );
  }

}
