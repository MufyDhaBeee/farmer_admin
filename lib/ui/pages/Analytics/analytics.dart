import 'package:farmer_admin/ui/pages/common_widget/common_widget.dart';
import 'package:flutter/material.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CommonAppBar(title: ' Sale Analytics',),
        ],
      ),


    );
  }
}
