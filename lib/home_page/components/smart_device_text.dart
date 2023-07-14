import 'package:flutter/material.dart';

class SmartDeviceText extends StatelessWidget {
  const SmartDeviceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Smart Devices",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.grey.shade800),
    );
  }
}
