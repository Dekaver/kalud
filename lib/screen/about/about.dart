import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "About Kalkulator Undercarriage",
        style: TextStyle(fontSize: 16),
      )),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('About')),
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('Kalkulator Undercarriage adalah kalkulator menghitung sisa waktu pakai beberapa componen penting pada undercarriage seri PC200-7', style: TextStyle(fontSize: 10, color: Colors.black87),))
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline_rounded),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('Version')),
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('1.0', style: TextStyle(fontSize: 10, color: Colors.black87),))
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.error_outline_outlined),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('Copyright')),
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('© since 2021 Kalkulator Undercarriage', style: TextStyle(fontSize: 10, color: Colors.black87),))
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.work_outline_outlined),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('Library')),
                Padding(
                    padding: EdgeInsets.only(left: 8.0), child: Text('Product By Flutter Framework', style: TextStyle(fontSize: 10, color: Colors.black87),))
              ],
            ),
            onTap: () {},
          ),
          
        ],
      ),
    );
  }
}
