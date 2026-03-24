import 'package:flutter/material.dart';

Widget cardItem() {
  return Container(
    width: 180,
    margin: const EdgeInsets.only(right: 12),
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.green.shade800,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ICON + PERCENTAGE BOX
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.inventory_2, color: Color.fromRGBO(156, 229, 101, 1), size: 28),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.28),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "+12%",
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        const Text(
          "Products sold",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.78), fontSize: 16, fontWeight: FontWeight.w600
          ),
        ),

        const SizedBox(height: 6),

        const Text(
          "12,450",
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),

        const Spacer(),
/// graph here
        // SizedBox(
        //   height: 40,
        //   child: Image.asset(
        //     "assets/images/wave.png", // put your wave image
        //     fit: BoxFit.contain,
        //   ),
        // ),
      ],
    ),
  );
}
