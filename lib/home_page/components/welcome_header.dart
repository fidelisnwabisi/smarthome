import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: [
          Text(
            "Welcome Home",
            style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
          ),
          Text(
            "Fidelis Nwabisi",
            style: GoogleFonts.bebasNeue(fontSize: 71.75),
          ),
        ],
      ),
    );
  }
}
