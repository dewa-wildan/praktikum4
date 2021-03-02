import 'package:flutter/material.dart';

// ignore: camel_case_types
class result extends StatelessWidget {
  const result({
    Key key,
    @required double kelvin,
    @required double reamur,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Suhu dalam Kelvin',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Text(
                  '$_kelvin',
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Suhu dalam Reamor',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Text(
                  '$_reamur',
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
