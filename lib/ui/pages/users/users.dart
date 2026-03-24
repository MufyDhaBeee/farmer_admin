import 'package:farmer_admin/ui/pages/common_widget/common_widget.dart';
import 'package:farmer_admin/ui/pages/users/users_more.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CommonAppBar(title: 'Users',),
          const SizedBox(height: 10),
          SearchBarContainer(),
          const SizedBox(height: 12),


        ],
      ),

    );
  }
}
