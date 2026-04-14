import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: .dark,
        textTheme: TextTheme(titleLarge: TextStyle(fontSize: 64)),
        // displayLarge:	57
        // Headline Large	32
        // Headline Medium	28
        // Title Large	22
        // Body Large	16
        // Body Medium	14
        // Label Small	11
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: .maxFinite,
            child: Stack(
              alignment: .topLeft,
              children: [
                // Image.asset('lib/assets/whiteish_bg.jpg', fit: .cover),
                Container(
                  width: .infinity,
                  height: size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: .topCenter,
                      end: .bottomCenter,
                      colors: [Color(0xFF6F24BE), Color(0xFF39026C)],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(36.0),
                          child: Row(
                            spacing: 24,
                            children: [
                              Text(
                                "IGBANA.AI",
                                style: GoogleFonts.comicRelief(
                                  fontSize: 36,
                                  fontWeight: .w600,
                                ),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {},
                                onHover: (value) {},
                                child: Text(
                                  "About",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                onHover: (value) {},
                                child: Text(
                                  "Projects",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                onHover: (value) {},
                                child: Text(
                                  "Contact",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 1500),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: .start,
                                  mainAxisAlignment: .center,
                                  spacing: 0,
                                  children: [
                                    Text(
                                      "Hi 👋",
                                      style: TextTheme.of(context).displayLarge!
                                          .merge(GoogleFonts.poppins()),
                                    ),
                                    SizedBox(height: 48),
                                    Text(
                                      "FLUTTER",
                                      style: GoogleFonts.montserrat(
                                        fontWeight: .w800,
                                        fontSize: 72,
                                        height: 1,
                                      ),
                                    ),
                                    Text(
                                      "ENGINEER",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey[500],
                                        fontSize: 72,
                                        height: 1,
                                        fontWeight: .w600,
                                      ),
                                    ),
                                    Typer(),
                                    SizedBox(height: 72),
                                    Row(children: [HireButton()]),
                                  ],
                                ),
                                Column(
                                  spacing: 32,
                                  mainAxisSize: .min,
                                  children: [
                                    ClipOval(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 5.0,
                                          sigmaY: 5.0,
                                        ),
                                        child: Container(
                                          width: 650,
                                          height: 650,
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                          ),
                                          child: Image.asset(
                                            'lib/assets/dp.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: .min,
                                      children: [
                                        Text(
                                          "IGBANA,",
                                          style: TextTheme.of(context)
                                              .displayLarge!
                                              .merge(GoogleFonts.poppins()),
                                        ),
                                        Text(
                                          " Israel A",
                                          style: TextTheme.of(context)
                                              .displayLarge!
                                              .merge(
                                                GoogleFonts.poppins(
                                                  color: Colors.white30,
                                                ),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HireButton extends StatefulWidget {
  const HireButton({super.key});

  @override
  State<HireButton> createState() => _HireButtonState();
}

class _HireButtonState extends State<HireButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() {
        isHovered = value;
      }),
      onTap: () {},
      child: AnimatedContainer(
        duration: Durations.medium4,
        padding: .symmetric(horizontal: 48, vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: isHovered ? null : Color(0xFFE5007E),
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: Text("Hire me", style: GoogleFonts.poppins(fontSize: 32)),
      ),
    );
  }
}

class Typer extends StatefulWidget {
  const Typer({super.key});

  @override
  State<Typer> createState() => _TyperState();
}

class _TyperState extends State<Typer> {
  List roles = [
    "Backend Developer",
    "ML Enthusiast",
    "System Builder",
    "Python Enthusiast",
  ];
  String txt = '';

  @override
  Widget build(BuildContext context) {
    return Text(
      roles[3],
      style: GoogleFonts.poppins(color: Colors.black26, fontSize: 24),
    );
  }
}
