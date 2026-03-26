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
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          CommonAppBar(title: 'Farmer',),
          SizedBox(height: 25,),
          SearchBarContainer(),
          SizedBox(height: 15,),
          FilterButtons(),
          SizedBox(height: 10,),
          UserCard(
            name: 'Ruben Workman',
            location: 'West wing.room 402',
            image: 'assets/images/farmer_image.png',
            status: 'Active',
            amount: 5201,
            onTap: () {  },
          ),

        ],
      ),

    );
  }
}
