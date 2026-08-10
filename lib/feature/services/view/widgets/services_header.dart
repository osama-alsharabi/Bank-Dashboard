import 'package:bank_dashboard/feature/services/data/services_header_data.dart';
import 'package:bank_dashboard/feature/services/view/widgets/services_item_header.dart';
import 'package:flutter/material.dart';

class ServicesHeader extends StatelessWidget {
  const ServicesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: ServicesHeaderData.data
          .map((e) => ServicesItemHeader(servicesHeaderModel: e))
          .toList(),
    );
  }
}
