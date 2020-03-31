import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class ViewScreen extends StatefulWidget {

  //creating static string to call in routes
  static String id = "view_screen";

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'VIEW',
          style: kAppBarText,
        ),
      ),
    );
  }
}
