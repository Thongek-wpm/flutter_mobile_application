import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_mo_app/screens/edit.phone_ui.dart';
import 'package:my_mo_app/screens/edit_about_me.dart';
import 'package:my_mo_app/screens/edit_email_ui.dart';
import 'package:my_mo_app/screens/edit_name_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  String ur_name = 'โปรดใส่ข้อมูล';
  String ur_phone = 'โปรดใส่ข้อมูล';
  String ur_email = 'โปรดใส่ข้อมูล';
  String ur_about = 'โปรดใส่ข้อมูล';
  getfromSP() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (sp.containsKey("name_key") == true) {
      setState(() {
        ur_name = sp.getString('name_key')!;
      });
    }
    if (sp.containsKey("phone_key") == true) {
      setState(() {
        ur_phone = sp.getString('phone_key')!;
      });
    }
    if (sp.containsKey("email_key") == true) {
      setState(() {
        ur_email = sp.getString('email_key')!;
      });
    }

    if (sp.containsKey("about_key") == true) {
      setState(() {
        ur_about = sp.getString('about_key')!;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getfromSP();
    super.initState();
  }

  File? photo;

  takePhotoFromCamera() async {
    XFile? pickImages =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickImages != null) {
      setState(() {
        photo = File(pickImages.path);
      });
    }
  }

  selectPhotoFromCamera() async {
    XFile? pickImages =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickImages != null) {
      setState(() {
        photo = File(pickImages.path);
      });
    }
  }

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
                      photo == null
                          ? ClipRRect(
                              // ignore: sort_child_properties_last
                              child: Image.asset(
                                "assets/images/support.png",
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            )
                          : ClipRRect(
                              // ignore: sort_child_properties_last
                              child: Image.file(
                                photo!,
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            )
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  IconButton(
                    onPressed: () {
                      //open photo or gallery
                      showCupertinoModalPopup(
                        context: context,
                        builder: ((context) => CupertinoActionSheet(
                              title: Text(
                                "คุณจะใช้รูปภาพแบบ",
                                style: GoogleFonts.kanit(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              actions: [
                                CupertinoActionSheetAction(
                                  onPressed: (() => takePhotoFromCamera()),
                                  child: const Icon(Icons.camera),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: (() => selectPhotoFromCamera()),
                                  child: const Icon(Icons.photo_library),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('ยกเลิก'),
                                ),
                              ],
                            )),
                      );
                    },
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
                        builder: (context) => const EditnameUi(),
                      ),
                    ).then(
                      (context) => getfromSP(),
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
                  subtitle: Text(ur_name),
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
                        builder: (context) => const EditphoneUi(),
                      ),
                    ).then(
                      (context) => getfromSP(),
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
                  title: Text("Telephone Number"),
                  // ignore: prefer_const_constructors
                  subtitle: Text(ur_phone),
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
                        builder: (context) => const EditemailUi(),
                      ),
                    ).then(
                      (context) => getfromSP(),
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
                  subtitle: Text(ur_email),
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
                        builder: (context) => const EditaboutmeUi(),
                      ),
                    ).then(
                      (context) => getfromSP(),
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
                  subtitle: Text(ur_about),
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
