import 'package:farmer_admin/ui/pages/common_widget/common_widget.dart';
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
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          CommonAppBar(title: 'Users',),
          const SizedBox(height: 25),
          SearchBarContainer(),
          const SizedBox(height: 15),
          FilterButtons(),
          SizedBox(height: 10,),
          UserCard(
            name: 'Jordyn Vetrovs',
            location: 'West wing.room 402',
            image: 'assets/images/user_image.png',
            status: 'Active',
            amount: 5201,
            onTap: () {  },
          ),
        ],
      ),

    );
  }
}
