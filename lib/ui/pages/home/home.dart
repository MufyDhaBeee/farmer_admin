import 'package:farmer_admin/ui/pages/home/home_admin_more.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f4f6),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ---------------- HEADER ----------------
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color.fromRGBO(15, 87, 0, 1),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/admin_avatar.png",
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Admin",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          )),
                      Text("Admin page",
                          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6), fontWeight: FontWeight.w400, fontSize: 12)),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Color.fromRGBO(15, 87, 0, 1),
                    child: Icon(Icons.notifications, color: Colors.white),
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// ---------------- STATS CARDS ----------------
        Padding(
          padding: const EdgeInsets.all(12.0),

          child: SizedBox(
            height: 200, // card height

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2, // how many cards you want
              itemBuilder: (context, index) {
                return cardItem();
              },
            ),
          ),
        ),

              /// ---------------- TOP FARMERS ----------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Top performing farmer",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(0, 0, 0, 1))),
                  Text("View All",
                      style: TextStyle(fontSize: 14, color: Color.fromRGBO(15, 87, 0, 1), fontWeight: FontWeight.w600)),
                ],
              ),

              const SizedBox(height: 12),
              _farmerTile(1, "Green valleyy", "assets/images/farmer1.jpg"),
              _farmerTile(2, "Randy George", "assets/images/farmer2.jpg"),
              _farmerTile(3, "Jocelyn Dias", "assets/images/farmer3.jpg"),

              const SizedBox(height: 25),

              /// ---------------- RECENT ACTIVITY ----------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Recent user activity",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("History",
                      style: TextStyle(fontSize: 16, color: Colors.green)),
                ],
              ),

              const SizedBox(height: 12),

              activityTile(
                "Miracle Baptista",
                "Purchased “Premium honeySelection” from green",
                "assets/images/user1.jpg",
              ),

              activityTile(
                "Emerson Septimus",
                "Purchased “Premium honeySelection” from green",
                "assets/images/user2.jpg",
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  /// FARMER LIST TILE
  Widget _farmerTile(int rank, String name, String img) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Text(rank.toString(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(width: 12),
          CircleAvatar(radius: 20, backgroundImage: AssetImage(img)),
          const SizedBox(width: 12),
          Expanded(
              child: Text(name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500))),
          const Text("₹ 9,623",
              style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold)),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  /// ACTIVITY LIST TILE
  Widget activityTile(String name, String msg, String img) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 12),
          CircleAvatar(radius: 22, backgroundImage: AssetImage(img)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(msg, style: const TextStyle(color: Colors.black54)),
                const SizedBox(height: 6),
                const Text("₹ 9,623  Total spend",
                    style: TextStyle(color: Colors.green)),
              ],
            ),
          )
        ],
      ),
    );
  }
}