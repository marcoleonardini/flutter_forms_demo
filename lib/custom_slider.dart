import 'package:flutter/material.dart';
import 'package:flutter_forms_demo/custom.dart';

// https://levelup.gitconnected.com/custom-spinner-tooltip-flutter-e3576d531488

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    Key key,
  }) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double valor = 0.0;
  int _dollars = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      alignment: Alignment.center,
      child: SliderTheme(
        data: SliderThemeData().copyWith(
          thumbColor: Colors.cyanAccent,
          valueIndicatorColor: Colors.red,
          valueIndicatorTextStyle:
              TextStyle(fontSize: 18, color: Colors.yellow),
          valueIndicatorShape: CircularValueShape(5),
          showValueIndicator: ShowValueIndicator.always,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
          overlayColor: Colors.cyan,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
        ),
        child: Slider(
          value: _dollars.toDouble(),
          min: 20.0,
          max: 330.0,
          divisions: 20,
          label: '$_dollars \$us',
          onChanged: (double newValue) {
            setState(() {
              _dollars = newValue.round();
            });
          },
          semanticFormatterCallback: (double newValue) {
            return '${newValue.round()} dollars';
          },
        ),
      ),
    );
  }
}
