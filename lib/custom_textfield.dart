import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48.0),
      constraints: BoxConstraints.expand(
        height: 150.0,
      ),
      child: Center(
        child: TextField(
          keyboardAppearance: Brightness.light,
          decoration: InputDecoration(
            // Floating Label
            labelText: 'phone',

            // Paddeing
            contentPadding: EdgeInsets.all(4.0),

            // Filled With Colr
            filled: true,
            fillColor: Colors.purple[50],

            // Border when it is focused
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple,
              ),
              borderRadius: BorderRadius.circular(28.0),
            ),

            // Helper Text below
            helperText: 'e.j. 72540680',

            // Border when it is not focused
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple,
              ),
            ),

            prefixText: '+591-',
            prefixStyle: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.deepOrange,
            ),
          ),

          cursorColor: Colors.deepOrange,
          // cursorRadius: Radius.circular(8.0),
          // cursorWidth: 16.0,
          // obscureText: true,

          textAlign: TextAlign.left,

          toolbarOptions: ToolbarOptions(
            copy: true,
            cut: true,
            paste: true,
          ),

          keyboardType: TextInputType.numberWithOptions(decimal: true),

          textCapitalization: TextCapitalization.words,

          style: TextStyle(
            color: Colors.red,
            // fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
