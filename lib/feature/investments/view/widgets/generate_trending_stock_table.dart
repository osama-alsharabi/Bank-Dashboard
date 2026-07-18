import 'package:bank_dashboard/feature/investments/model/trending_stock_table_model.dart';
import 'package:flutter/material.dart';

TableRow generateTrendingStockTable({required TrendingStockTableModel data}) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(data.sLNo.toString()),
      ),
      Padding(padding: const EdgeInsets.all(15.0), child: Text(data.name)),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(data.price.toStringAsFixed(0)),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(data.returnPrecent.toStringAsFixed(0)),
      ),
    ],
  );
}
