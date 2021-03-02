import 'package:flutter/material.dart';
import 'Conver.dart';
import 'Input.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// This widget is the root of your application.
  //controller
  TextEditingController etInput = new TextEditingController();
  //variabel berubah
  double _inputUser = 0;
  //mengeset nilai pada dropdown
  String _newValue = "Kelvin";
  double _result = 0;
  //list
  var listItem = {"Kelvin", "Reamur"};

  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      if (_newValue == "Kelvin")
        _result = _inputUser + 273;
      else
        _result = (4 / 5) * _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              input(inputController: inputController),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                // isi value dengan variabel _newValue.
                value: _newValue,
                onChanged: dropdownOnChanged,
              ),
              result(
                result: _result,
              ),
              Convert(
                konvertHandler: perhitunganSuhu,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //method dropdownOnChanged
  void dropdownOnChanged(String changeValue) {
    _newValue = changeValue;
  }
}
