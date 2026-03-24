import 'package:farmer_admin/ui/pages/common_widget/common_widget.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CommonAppBar(title: 'Profile'),
        ],
      ),

    );
  }
}
