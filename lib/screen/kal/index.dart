import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kalud/src/funct/kalkulator.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final TextEditingController pengukuranText = TextEditingController();
  final TextEditingController operationHourText = TextEditingController();
  final TextEditingController standarSizeText = TextEditingController();
  final TextEditingController repairLimitText = TextEditingController();
  final TextEditingController faktorText = TextEditingController();
  final TextEditingController hourLeftText = TextEditingController(text: '0');
  final TextEditingController wearRateText = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hourleft & Wear Rate'),

      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                      TextInputFormatter.withFunction((oldValue, newValue) {
                        try {
                          final text = newValue.text;
                          if (text.isNotEmpty) double.parse(text);
                          return newValue;
                        } catch (e) {}
                        return oldValue;
                      }),
                    ],
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: false),
                    controller: pengukuranText,
                    decoration: InputDecoration(
                      icon: Text("Pengukuran (mm)"),
                      hintTextDirection: TextDirection.rtl,
                      hintText: '0',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: operationHourText,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Text("Operation (Jam)"),
                      hintTextDirection: TextDirection.rtl,
                      hintText: '0',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                      TextInputFormatter.withFunction((oldValue, newValue) {
                        try {
                          final text = newValue.text;
                          if (text.isNotEmpty) double.parse(text);
                          return newValue;
                        } catch (e) {}
                        return oldValue;
                      }),
                    ],
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: false),
                    controller: standarSizeText,
                    decoration: InputDecoration(
                      icon: Text("Standar Size (mm)"),
                      hintTextDirection: TextDirection.rtl,
                      hintText: "0",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                      TextInputFormatter.withFunction((oldValue, newValue) {
                        try {
                          final text = newValue.text;
                          if (text.isNotEmpty) double.parse(text);
                          return newValue;
                        } catch (e) {}
                        return oldValue;
                      }),
                    ],
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: false),
                    controller: repairLimitText,
                    decoration: InputDecoration(
                      icon: Text("Repair Limit (mm)"),
                      hintTextDirection: TextDirection.rtl,
                      hintText: "0",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                      TextInputFormatter.withFunction((oldValue, newValue) {
                        try {
                          final text = newValue.text;
                          if (text.isNotEmpty) double.parse(text);
                          return newValue;
                        } catch (e) {}
                        return oldValue;
                      }),
                    ],
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: false),
                    controller: faktorText,
                    decoration: InputDecoration(
                      icon: Text("Faktor (k)"),
                      hintTextDirection: TextDirection.rtl,
                      hintText: "0",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.47,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: ElevatedButton(
                    child: Text("Reset"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    ),
                    onPressed: () {
                      operationHourText.text = "0";
                      pengukuranText.text = "0";
                      repairLimitText.text = "0";
                      faktorText.text = "0";
                      standarSizeText.text = "0";
                      wearRateText.text = "0";
                      hourLeftText.text = "0";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.47,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: ElevatedButton(
                    child: Text("Hitung"),
                    style: ButtonStyle(),
                    onPressed: () {
                      var operationHourvalue = operationHourText.text != ''
                          ? double.parse(operationHourText.text)
                          : 0.0;
                      double pengukuranvalue = pengukuranText.text != ''
                          ? double.parse(pengukuranText.text)
                          : 0.0;
                      double repairLimitvalue = repairLimitText.text != ''
                          ? double.parse(repairLimitText.text)
                          : 0.0;
                      double standarSizevalue = standarSizeText.text != ''
                          ? double.parse(standarSizeText.text)
                          : 0.0;
                      double faktorvalue = faktorText.text != ''
                          ? double.parse(faktorText.text)
                          : 0.0;
                      print(operationHourvalue.toString() + pengukuranvalue.toString() + repairLimitvalue.toString() + standarSizevalue.toString() + faktorvalue.toString());
                      var wr = wearRate(pengukuranvalue, repairLimitvalue, standarSizevalue);
                      var ka = konstantaA(wr, operationHourvalue, faktorvalue);
                      var hr = hoursLeft(100, ka, faktorvalue);
                      wearRateText.text = wr.toString();
                      hourLeftText.text = (hr - operationHourvalue.toInt()).toString();
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: TextField(
                    readOnly: true,
                    textDirection: TextDirection.rtl,
                    controller: wearRateText,
                    decoration: InputDecoration(
                      icon: Text("Wear Rate (%)"),
                      hintTextDirection: TextDirection.rtl,
                      hintText: "0",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: TextField(
                    readOnly: true,
                    textDirection: TextDirection.rtl,
                    controller: hourLeftText,
                    decoration: InputDecoration(
                      icon: Text("Hours Left (Jam)"),
                      hintText: "0",
                      hintTextDirection: TextDirection.rtl,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
