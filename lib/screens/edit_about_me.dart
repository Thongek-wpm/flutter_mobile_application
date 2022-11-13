// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditaboutmeUi extends StatefulWidget {
  const EditaboutmeUi({super.key});

  @override
  State<EditaboutmeUi> createState() => _EditaboutmeUiState();
}

class _EditaboutmeUiState extends State<EditaboutmeUi> {
  TextEditingController aboutctrl = TextEditingController(text: "");
  Future saveToSP() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(
      'about_key',
      aboutctrl.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "แก้ไขเกียวกับ",
          style: GoogleFonts.kanit(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.10,
              ),
              Icon(
                FontAwesomeIcons.objectGroup,
                size: MediaQuery.of(context).size.width * 0.35,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.10,
              ),
              Text(
                'ป้อมเกี่ยวกับ',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.03),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                // ignore: prefer_const_constructors
                child: TextField(
                  controller: aboutctrl,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.03,
              ),
              ElevatedButton(
                onPressed: () {
                  // check name if enter collact data and show MGS
                  // if entered show
                  if (aboutctrl.text.trim().isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "คำเตือน",
                            style: GoogleFonts.kanit(),
                          ),
                          content: Text(
                            "โปรดใส่ข้อมูลด้วย",
                            style: GoogleFonts.kanit(),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Okay"),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    saveToSP().then(
                      (value) => Navigator.pop(context),
                    );
                  }
                },
                child: Text("Done"),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.8,
                  MediaQuery.of(context).size.width * 0.15,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
