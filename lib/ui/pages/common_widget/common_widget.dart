import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final bool showNotification;

  const CommonAppBar({
    super.key,
    required this.title,
    this.showBack = true,
    this.showNotification = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// ---------- BACK BUTTON ----------
                showBack
                    ? Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xfff3f4f6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.arrow_back,
                          color: Colors.black, size: 22),
                    ),
                  ),
                )
                    : const SizedBox(width: 40),

                /// ---------- TITLE ----------
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                /// ---------- NOTIFICATION BUTTON ----------
                showNotification
                    ? Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xfff3f4f6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.notifications,
                        color: Colors.black),
                  ),
                )
                    : const SizedBox(width: 40),
              ],
            ),
          ),

          /// ---------- DIVIDER ----------
          Container(height: 1, color: const Color(0xffe6e6e6)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}