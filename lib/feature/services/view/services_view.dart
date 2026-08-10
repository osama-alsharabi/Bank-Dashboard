import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/services/view/widgets/services_header.dart';
import 'package:flutter/material.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: false,
          expandedHeight: 80,
          collapsedHeight: 80,
          toolbarHeight: 80,
          flexibleSpace: CustomAppBar(title: "Services"),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ServicesHeader(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
