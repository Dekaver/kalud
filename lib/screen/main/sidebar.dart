import 'package:flutter/material.dart';
import 'package:kalud/screen/about/about.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'lib/src/resource/undercarriage-parts-icon.png'))),
              child: Stack(children: <Widget>[
                Positioned(
                    bottom: 13.0,
                    left: 75.0,
                    child: Text("Kalkulator Undercarriage",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500))),
              ])),
          Divider(),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.info_outline_rounded),
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('About'))
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => AboutPage()
                    ));
            },
          ),
        ],
      ),
    );
  }
}