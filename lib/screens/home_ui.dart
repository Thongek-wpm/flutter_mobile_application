import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mo_app/screens/edit.phone_ui.dart';
import 'package:my_mo_app/screens/edit_about_me.dart';
import 'package:my_mo_app/screens/edit_email_ui.dart';
import 'package:my_mo_app/screens/edit_name_ui.dart';

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
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Row(
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
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  IconButton(
                    onPressed: () {},
                    // ignore: prefer_const_constructors
                    icon: Icon(
                      Icons.camera_alt,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                // ignore: prefer_const_constructors
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditnameUi(),
                      ),
                    );
                  },
                  // ignore: prefer_const_constructors
                  leading: Icon(
                    FontAwesomeIcons.person,
                    color: Colors.blue,
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.update),
                  // ignore: prefer_const_constructors
                  title: Text("Name"),
                  // ignore: prefer_const_constructors
                  subtitle: Text("XXXX YYYYYY"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                // ignore: prefer_const_constructors
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditphoneUi(),
                      ),
                    );
                  },
                  // ignore: prefer_const_constructors
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.blue,
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.update),
                  // ignore: prefer_const_constructors
                  title: Text("Tel."),
                  // ignore: prefer_const_constructors
                  subtitle: Text("XXXXXXXXXXX"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                // ignore: prefer_const_constructors
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditemailUi(),
                      ),
                    );
                  },
                  // ignore: prefer_const_constructors
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.update),
                  // ignore: prefer_const_constructors
                  title: Text("E-mail"),
                  // ignore: prefer_const_constructors
                  subtitle: Text("XXXXX@YYYYY.com"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                // ignore: prefer_const_constructors
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditaboutmeUi(),
                      ),
                    );
                  },
                  // ignore: prefer_const_constructors
                  leading: Icon(
                    FontAwesomeIcons.objectGroup,
                    color: Colors.blue,
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.update),
                  // ignore: prefer_const_constructors
                  title: Text("About Me"),
                  // ignore: prefer_const_constructors
                  subtitle: Text("XXXXXXXXXXXXX..."),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
