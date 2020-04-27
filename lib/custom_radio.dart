import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({
    Key key,
  }) : super(key: key);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  String flag;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Radio(
          value: 'tomate',
          activeColor: Colors.green,
          onChanged: (value) {
            setState(() {
              flag = value;
              print(value);
            });
            print(value);
          },
          groupValue: flag,
        ),
        Radio(
          value: 'cebolla',
          onChanged: (value) {
            setState(() {
              flag = value;
            });
            print(value);
          },
          groupValue: flag,
        ),
      ],
    );
  }
}
