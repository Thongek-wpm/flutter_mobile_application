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
                    child: Image.network(
                      'https://images.pexels.com/photos/5540995/pexels-photo-5540995.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  Icon(
                    FontAwesomeIcons.camera,
                    size: 30,
                  )
                ],
              ),
            ],
          ),),
        ),backgroundColor: Colors.grey,);
  }
}
