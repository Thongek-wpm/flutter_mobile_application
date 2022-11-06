import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My mobile Application",
          style: GoogleFonts.kadwa(fontSize: 15.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    // ignore: sort_child_properties_last
                    child: Image.asset(
                      "assets/images/support.png",
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  // ignore: prefer_const_constructors
                  Icon(
                    FontAwesomeIcons.camera,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
