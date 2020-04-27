import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_checkbox.dart';
import 'custom_radio.dart';
import 'custom_slider.dart';
import 'custom_textfield.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: ListView(
          children: <Widget>[
            CustomTextField(),
            Divider(),
            CustomCheckbox(),
            Divider(),
            CustomRadio(),
            Divider(),
            CustomSlider(),
            Divider(),
            RaisedButton(
              child: Text('pick date'),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2019),
                  lastDate: DateTime(2021, 12, 31),
                  confirmText: 'Seleccionar',
                  cancelText: 'ya no quiero',
                  // initialEntryMode: DatePickerEntryMode.input,

                  // builder:
                );
              },
            ),
            Divider(),
            DropdownButton(
              onChanged: (val) {},
              items: [
                DropdownMenuItem(
                  child: Icon(Icons.check_box_outline_blank),
                ),
                DropdownMenuItem(
                  child: Icon(Icons.check_box_outline_blank),
                ),
                DropdownMenuItem(
                  child: Icon(Icons.check_box_outline_blank),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
