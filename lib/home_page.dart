import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/smart_device_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List mySmartDevice = [
  ["Smart Light", "assets/icons/menu.png", true],
  ["Smart AC", "assets/icons/menu.png", false],
  ["Smart TV", "assets/icons/menu.png", false],
  ["Smart Fan", "assets/icons/menu.png", false],
];

void powerSwitchChanged(bool value, int index) {
  setState(() {
    mySmartDevice[index][2] = value;
  });
}

void setState(Null Function() param0) {}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  Text(
                    "Welcome Home",
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
                  ),
                  Text(
                    "Flutter TC",
                    style: GoogleFonts.bebasNeue(fontSize: 72),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Smart Devices",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey.shade800),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemCount: mySmartDevice.length,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return SmartDeviceBox(
                    smartDeviceName: mySmartDevice[index][0],
                    iconPath: mySmartDevice[index][1],
                    powerOn: mySmartDevice[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
