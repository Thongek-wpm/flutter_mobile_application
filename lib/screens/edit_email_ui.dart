import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditemailUi extends StatefulWidget {
  const EditemailUi({super.key});

  @override
  State<EditemailUi> createState() => _EditemailUiState();
}

class _EditemailUiState extends State<EditemailUi> {
  TextEditingController emailctrl = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "แก้ไขอีเมล์",
          style: GoogleFonts.kanit(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
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
                Icons.email,
                size: MediaQuery.of(context).size.width * 0.35,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.10,
              ),
              Text(
                'ป้อมอีเมล์',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.03),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  controller: emailctrl,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.03,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Done"),
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
