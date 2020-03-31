import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class AddScreen extends StatefulWidget {

  //creating static string to call in routes
  static String id = "add_screen";

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  //creating FocusNodes to focus on the textfields when user lands on this page.
  FocusNode nodeOne = FocusNode(); //this will automatically take user to 'add title'
  FocusNode nodeTwo = FocusNode(); //this will automatically take user to 'title desc'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ADD',
          style: TextStyle(
            fontFamily: 'Neue',
            letterSpacing: 20.0,
            fontSize: 30.0,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
          body: Column(
            children: <Widget>[
              // creating the title box
              Container(
                margin: EdgeInsets.all(30.0),
                alignment: AlignmentDirectional(0.0, 0.7),
                decoration: BoxDecoration(
                  color: Color(0xFFc3c3c6),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: TextField(
                  focusNode: nodeOne,
                  textCapitalization: TextCapitalization.words, //First letter of each word caps
                  textAlign: TextAlign.center,
                  style: kTitleText, // using from constant file
                  maxLength: 30, //max number of characters the user can input
                  maxLines: 3, //the number of lines it will expand to
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration.collapsed(
                    hintText: "Tap To Add Title",
                    hintStyle: kHintText,
                  ),
                ),
                constraints: BoxConstraints.expand(
                  height: 100.0,
                  width: 310.0,
                ),
              ),

              // creating the description box
              Expanded(
                //the box beneath
                child: Container(
                  margin: EdgeInsets.all(30.0),
                  alignment: AlignmentDirectional(0.0, 0.5), //TODO: research alignment
                  decoration: BoxDecoration(
                    color: Color(0xFFc3c3c6), //TODO: change transparency
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  constraints: BoxConstraints.expand(
                    height: 300.0,
                    width: 310.0,
                  ),

                  // the add description box
                  child: Container(
                    margin: EdgeInsets.all(40.0),
                    alignment: AlignmentDirectional(0.0, 0.4),
                    color: Color(0xFFc3c3c6),
                    child: TextField(
                      focusNode: nodeTwo,
                      textCapitalization: TextCapitalization.words, //First letter of each word caps
                      textAlign: TextAlign.center,
                      style: kTitleText, // using from constant file
                      maxLength: 350, //max number of characters the user can input
                      maxLines: 3, //the number of lines it will expand to
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration.collapsed(
                        hintText: "Tap To Add Description",
                        hintStyle: kHintText,
                      ),
                    ),
                    constraints: BoxConstraints.expand(
                      height: 150.0,
                      width: 280.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
      );
  }
}
