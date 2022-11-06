import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditaboutmeUi extends StatefulWidget {
  const EditaboutmeUi({super.key});

  @override
  State<EditaboutmeUi> createState() => _EditaboutmeUiState();
}

class _EditaboutmeUiState extends State<EditaboutmeUi> {
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
