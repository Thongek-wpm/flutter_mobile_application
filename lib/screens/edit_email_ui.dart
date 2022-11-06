import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditemailUi extends StatefulWidget {
  const EditemailUi({super.key});

  @override
  State<EditemailUi> createState() => _EditemailUiState();
}

class _EditemailUiState extends State<EditemailUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreen),
    );
  }
}
