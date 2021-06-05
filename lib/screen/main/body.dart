import 'package:flutter/material.dart';
import 'package:kalud/screen/kal/busing/bushing.dart';
import 'package:kalud/screen/kal/carrierroller/carrierroller.dart';
import 'package:kalud/screen/kal/grouserheight/grouserheight.dart';
import 'package:kalud/screen/kal/idler/idler.dart';
import 'package:kalud/screen/kal/linkheight/linkheight.dart';
import 'package:kalud/screen/kal/linkpitch/linkpitch.dart';
import 'package:kalud/screen/kal/trackroller/trackroller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
      child: ResponsiveGridList(
          desiredItemWidth: 100,
          minSpacing: 5,
          children: <Widget>[
            ElevatedButton(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.link_sharp,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'Link Pitch',
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LinkPitchPage()));
              },
            ),
            ElevatedButton(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_link,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'Link Hight',
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LinkHeightPage()));
              },
            ),
            ElevatedButton(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.build_sharp,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'O.D Bushing',
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BushingPage()));
              },
            ),
            ElevatedButton(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.track_changes,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'Track Roller',
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrackRollerPage()));
              },
            ),
            ElevatedButton(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.keyboard_capslock_outlined,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'Grouser Height',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GrouserHeightPage()));
              },
            ),
            ElevatedButton(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.call_merge_rounded,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'Carrier Roller',
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CarrierRollerPage()));
              },
            ),
            ElevatedButton(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.airline_seat_individual_suite_sharp,
                        color: Colors.grey,
                        size: 40,
                      ),
                      Text(
                        'IDLER',
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IDLERPage()));
              },
            ),
          ]),
    );
  }
}
