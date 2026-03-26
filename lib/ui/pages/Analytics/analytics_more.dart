import 'package:flutter/material.dart';
///-----------------------date range calender------------------------------------------>>
Widget CalenderTable(){
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(0, 0, 0, 0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5).withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.calendar_month, color: Color.fromRGBO(128, 251, 114, 1)),
              SizedBox(width: 8),
              Text("Jan 1 - Feb 28, 2025", style: TextStyle(
                fontWeight: FontWeight.w600,fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1),
              ),),
            ],
          ),
          Row(
            children: const [
              Text("Change", style: TextStyle(color: Color.fromRGBO(128, 251, 114, 1), fontWeight: FontWeight.w600)),
              SizedBox(width: 10,),
              Icon(Icons.arrow_forward_ios, size: 14, color: Color.fromRGBO(128, 251, 114, 1)),
            ],
          )
        ],
      ),
    ),
  );
}
// 📊 SALES TRENDS (STATIC BAR CHART DESIGN)
Widget StaticBar() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Color.fromRGBO(0, 0, 0, 0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5).withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text(
        "Sales Trends",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14,),
      ),
      const SizedBox(height: 20),
          // Fake bars
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bar(height: 80),
              bar(height: 120),
              bar(height: 100),
              bar(height: 150),
              bar(height: 130),
              bar(height: 165),
              bar(height: 175),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("Jan 1"),
              Text("Jan 10"),
              Text("Jan 15"),
              Text("Jan 20"),
              Text("Jan 25"),
              Text("Jan 31"),
              Text("Feb 1"),
            ],
          ),
        ],
      )),
  );

}
// Reusable BAR WIDGET
Widget bar({required double height}) {
  return Container(
    width: 30,
    height: height,
    decoration: BoxDecoration(
      color: Colors.green.shade300,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5),topRight: Radius.circular(5),
      )
    ),
  );
}
///---------------->Product BreakDown<------------------------------------------------------>>>
Widget ProductBreakDown(){
  return
    Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 180,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.5).withOpacity(0.2),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Products Breakdown",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            const SizedBox(height: 15),

            Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: ThreeColorCircularIndicator(),
                ),
                const SizedBox(width: 35),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.circle, size: 10, color: Colors.blue),
                        SizedBox(width: 6),
                        Text("Fruits"),
                        Text("45%"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 10, color: Colors.orange),
                        SizedBox(width: 6),
                        Text("Vegetables"),
                        Text("30%"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 10, color: Colors.yellow),
                        SizedBox(width: 6),
                        Text("Grains"),
                        Text("25%"),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
}


class ThreeColorCircularIndicator extends StatelessWidget {
  const ThreeColorCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (circle) {
          return const SweepGradient(
            startAngle: 0,
            endAngle: 3.14 * 2,
            stops: [
              0.0,
              0.33, // end of color 1
              0.33,
              0.66, // end of color 2
              0.66,
              1.0,  // end of color 3
            ],
            colors: [
              Colors.blue, Colors.blue,    // segment 1
              Colors.orange, Colors.orange, // segment 2
              Colors.green, Colors.yellow,   // segment 3
            ],
          ).createShader(circle);
        },
        child: const SizedBox(
          height: 120,
          width: 120,
          child: CircularProgressIndicator(
            strokeWidth: 12,
            value: 1, // FULL circle, but we apply 3 colors via gradient
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class TrendingProductTile extends StatefulWidget {
  const TrendingProductTile({super.key});

  @override
  State<TrendingProductTile> createState() => _TrendingProductTileState();
}

class _TrendingProductTileState extends State<TrendingProductTile> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SizedBox(
            height: 400,
            child: ListView.separated(
              separatorBuilder: (context,index)=>SizedBox(height: 10  ,),
              itemCount: 10,
              itemBuilder: (context, index) {
               return
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        height: 90,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Image.asset(
                          'assets/images/apple.png', fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Apple', style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),),
                          Text('Fruits . 1.2k units sold', style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                          ),),
                        ],
                      ),
                      SizedBox(width: 75,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('+28%', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(101, 255, 84, 1),
                          ),),
                          Text('Growth', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),),
                        ],
                      )
                    ],
                  ),

                );
              }
            ),
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
