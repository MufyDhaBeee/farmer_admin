import 'package:flutter/material.dart';

Widget SearchBarContainer(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search by name or email...",
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color.fromRGBO(29, 40, 66, 0.15), // Border color
            width: 0.1,           // Border width
          ),
        ),
      ),
    ),
  );
}


class UserCardWidget extends StatelessWidget {
  final String name;
  final String location;
  final String image;
  final String amount;
  final String status;
  final bool isActive;
  final VoidCallback? onTap;

  const UserCardWidget({
    super.key,
    required this.name,
    required this.location,
    required this.image,
    required this.amount,
    this.status = "Active",
    this.isActive = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // Profile Image + Active Dot
            Stack(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(image),
                ),
                if (isActive)
                  Positioned(
                    bottom: 2,
                    right: 2,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(width: 14),

            // Name + Location + Status
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 15, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(
                        location,
                        style: const TextStyle(
                            fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xffD7FFD7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      status,
                      style: const TextStyle(
                          color: Colors.green, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),

            // Amount
            Text(
              amount,
              style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, size: 16)
          ],
        ),
      ),
    );
  }
}