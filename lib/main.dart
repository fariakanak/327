import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'add_screen.dart';
import 'view_screen.dart';

void main() => runApp(ProjectApp());

class ProjectApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF3e3f47),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0xFF8db6f7)),
        ),
      ),

      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id :(context)=> WelcomeScreen(),
        AddScreen.id:(context)=> AddScreen(),
        ViewScreen.id:(context)=> ViewScreen(),
      },

    );
  }
}


