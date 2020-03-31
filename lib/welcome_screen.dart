import 'package:flutter/material.dart';
import 'package:flutter_app/add_screen.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/view_screen.dart';

class WelcomeScreen extends StatefulWidget {
  //creating static string to call in routes
  static String id = "welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'LOG',
          style: kAppBarText,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset('images/dreamcatcher.png',
                      width: 350.0, height: 350.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width:
                            20.0, //added this sized box to create a margin on left
                      ),
                      IconButton(
                        icon: Icon(Icons.assignment),
                        highlightColor: Color(0xFF3e3f47),
                        iconSize: 50.0,
                        color: Color(0xFF3e3f47),
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, ViewScreen.id);
                          });
                        },
                      ),
                      SizedBox(
                        width: 180.0, //the space in between the buttons
                      ),
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        highlightColor: Color(0xFF3e3f47),
                        iconSize: 50.0,
                        color: Color(0xFF3e3f47),
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, AddScreen.id);
                          },
                          );
                        },
                      ),
                      SizedBox(
                        width:
                            20.0, //added this sized box to create a margin on right
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
