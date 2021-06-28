import 'package:flutter/material.dart';
import 'package:kalud/screen/welcome/welcome.dart';
import 'sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkukator Undercarriage'),
      ),
      body: WelcomeScreen(),
      drawer: Sidebar(),
    );
  }
}