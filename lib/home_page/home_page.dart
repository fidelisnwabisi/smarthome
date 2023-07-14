import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/utils/smart_device_box.dart';

import 'components/menu_header.dart';
import 'components/smart_device_text.dart';
import 'components/welcome_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List mySmartDevice = [
  ["Smart Light", "assets/icons/menu.png", true],
  ["Smart AC", "assets/icons/smart ac.png", false],
  ["Smart TV", "assets/icons/smart tv.png", false],
  ["Smart Fan", "assets/icons/smart fan.png", false],
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const MenuHeader(),
            const SizedBox(height: 10),
            const WelcomeHeader(),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
            const SizedBox(height: 10),
            const SmartDeviceText(),
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
                    onChanged: (value) {
                      setState(() {
                        mySmartDevice[index][2] = value;
                      });
                    },
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
