import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 1400;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF0E172B),
                boxShadow: [BoxShadow(blurRadius: 12, color: Colors.black26)],
              ),
              height: 100,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: width),
                    child: Row(
                      spacing: 18,
                      children: [
                        Row(
                          children: [
                            Text(
                              "IGBANA",
                              style: GoogleFonts.bungee(fontSize: 24),
                            ),
                            Text(
                              "AI",
                              style: GoogleFonts.bungee(
                                color: Color(0xFFFCA311),
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Clickable(label: "Home", onTap: () {}),
                        Clickable(label: "Services", onTap: () {}),
                        Clickable(label: "Skills", onTap: () {}),
                        Clickable(label: "Portfolio", onTap: () {}),
                        Clickable(label: "Contact", onTap: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: width),
                  child: IntrinsicHeight(
                    child: Column(
                      // crossAxisAlignment: .stretch,
                      children: [
                        SizedBox(height: 32),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 800,
                            minHeight: MediaQuery.of(context).size.height / 1.8,
                          ),
                          child: Column(
                            mainAxisAlignment: .center,
                            children: [
                              Text(
                                "Hello, I'm a",
                                style: GoogleFonts.poppins(fontSize: 32),
                              ),
                              Text(
                                "Software Engineer",
                                textAlign: .center,
                                style: GoogleFonts.montserrat(
                                  fontWeight: .w700,
                                  fontSize: 72,
                                ),
                              ),
                              Text(
                                "bringing your ideas to life, effectivelly, and professionally \nloves to build applications, always",
                                textAlign: .center,
                                style: GoogleFonts.poppins(
                                  color: Color(0xAAE5E5E5),
                                ),
                              ),
                              SizedBox(height: 56),
                              Container(
                                padding: .symmetric(
                                  horizontal: 72,
                                  vertical: 24,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFCA311),
                                  borderRadius: .circular(12),
                                ),
                                child: IntrinsicWidth(
                                  child: Text(
                                    "Hire me",
                                    style: GoogleFonts.poppins(
                                      fontWeight: .w700,
                                      color: Color(0xFF0E172B),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "© Igbana AI, 2026",
                          style: TextStyle(color: Colors.grey),
                          textAlign: .center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Clickable extends StatefulWidget {
  const Clickable({super.key, required this.label, required this.onTap});
  final String label;
  final VoidCallback onTap;

  @override
  State<Clickable> createState() => _ClickableState();
}

class _ClickableState extends State<Clickable> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Center(
        child: InkWell(
          onHover: (val) => setState(() {
            hovered = val;
          }),
          onTap: widget.onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedDefaultTextStyle(
              duration: Durations.short2,
              style: GoogleFonts.poppins(
                color: hovered ? Color(0xFFFCA311) : Colors.white,
                fontWeight: hovered ? .w700 : .w400,
                fontSize: hovered ? 16 : 14,
              ),
              child: Text(widget.label),
            ),
          ),
        ),
      ),
    );
  }
}
