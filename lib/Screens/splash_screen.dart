import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      title: Text(
        "Covi-Help",
        style: GoogleFonts.poppins(
            color: Color(0xFF121212), fontWeight: FontWeight.bold),
      ),
      seconds: 5,
      loaderColor: Colors.teal,
      photoSize: 80,
      backgroundColor: Colors.white,
      image: new Image.asset("assets/logo/mask.png"),
    );
  }
}
