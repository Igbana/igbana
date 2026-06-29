import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WIP extends StatelessWidget {
  const WIP({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: .symmetric(vertical: 24),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .stretch,
          children: [
            Spacer(),
            Flexible(
              child: Padding(
                padding: .only(right: size.width / 10),
                child: Lottie.asset(
                  'lib/assets/construction.json',
                  repeat: true,
                  reverse: false,
                  renderCache: .raster,
                ),
              ),
            ),
            Text(
              "We are working",
              style: GoogleFonts.bebasNeue(fontSize: 32),
              textAlign: .center,
            ),
            Spacer(),
            Text(
              "© Igbana AI, 2026",
              style: GoogleFonts.poppins(color: Colors.grey),
              textAlign: .center,
            ),
          ],
        ),
      ),
    );
  }
}
