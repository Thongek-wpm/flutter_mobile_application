import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditphoneUi extends StatefulWidget {
  const EditphoneUi({super.key});

  @override
  State<EditphoneUi> createState() => _EditphoneUiState();
}

class _EditphoneUiState extends State<EditphoneUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}
