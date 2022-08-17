import 'package:flutter/material.dart';

class Cards_Tab extends StatefulWidget {
  const Cards_Tab({Key? key}) : super(key: key);

  @override
  State<Cards_Tab> createState() => _Cards_TabState();
}

class _Cards_TabState extends State<Cards_Tab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("cardssss Tab"),
      ),
    );
  }
}
