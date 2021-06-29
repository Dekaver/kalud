import 'package:flutter/material.dart';
import 'package:kalud/screen/kal/pc200-7/body.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('Undercarriage'),
      // ),
      body: ListView(
        children: [
          Container(
            height: 80,
            margin: EdgeInsets.all(5),
            alignment: Alignment(0, 0),
            child:
              ElevatedButton(
              child: Container(
                height: 60,
                margin: EdgeInsets.all(5),
                alignment: Alignment(0, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.build_sharp,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'PC200-7',
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue.shade400),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BodyPc2007()));
              },
            ),
          ),
        ],
      ),
    );
  }
}