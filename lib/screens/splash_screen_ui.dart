import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mo_app/screens/home_ui.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  @override
  void initState() {
    // TODO: implement initState
    //Splash Screen Code
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => HomeUi()),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/sau_ssu_logo.png',
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "My mobile Application",
            style:
                GoogleFonts.kanit(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "2022",
            style:
                GoogleFonts.kanit(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
