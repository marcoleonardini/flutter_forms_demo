import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    Key key,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      // ref: https://github.com/flutter/flutter/issues/19705#issuecomment-407946711
      child: Transform.scale(
        scale: 1,
        child: Checkbox(
          value: flag,
          activeColor: Colors.green,
          checkColor: Colors.yellowAccent,
          onChanged: (value) {
            setState(
              () {
                flag = value;
              },
            );
          },
        ),
      ),
    );
  }
}
