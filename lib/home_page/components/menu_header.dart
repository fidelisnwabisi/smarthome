import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/icons/menu.png",
            height: 40,
            color: Colors.grey[800],
          ),
          Icon(
            Icons.person,
            size: 45,
            color: Colors.grey[800],
          )
        ],
      ),
    );
  }
}
