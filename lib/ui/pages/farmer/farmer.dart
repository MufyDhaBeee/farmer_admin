import 'package:farmer_admin/ui/pages/common_widget/common_widget.dart';
import 'package:flutter/material.dart';

class Farmer extends StatefulWidget {
  const Farmer({super.key});

  @override
  State<Farmer> createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CommonAppBar(title: 'Farmer',),
        ],
      ),

    );
  }
}
