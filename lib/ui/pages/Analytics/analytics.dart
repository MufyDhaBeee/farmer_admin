import 'package:farmer_admin/ui/pages/Analytics/analytics_more.dart';
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
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonAppBar(title: ' Sale Analytics',),
            SizedBox(height: 20,),
            CalenderTable(),
            SizedBox(height: 20,),
            StaticBar(),
            SizedBox(height: 20,),
            ProductBreakDown(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Trending Products ( Last 30d )', style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),),
            ),
            SizedBox(height: 20,),
            TrendingProductTile(),

        
          ],
        ),
      ),


    );
  }
}
