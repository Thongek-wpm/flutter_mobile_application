import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditnameUi extends StatefulWidget {
  const EditnameUi({super.key});

  @override
  State<EditnameUi> createState() => _EditnameUiState();
}

class _EditnameUiState extends State<EditnameUi> {
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
