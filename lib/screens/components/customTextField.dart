import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  CustomTextField({@required this.textLabel,@required this.textHint,this.textHelper,@required this.icon});

  final String textLabel;
  final String textHint;
  final String textHelper;
  final IconData icon;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Container(
        child: new Theme(
          data: new ThemeData(
            primaryColor: Colors.black54,
            primaryColorDark: Colors.grey,
          ),
          child: new TextField(
            decoration: new InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
              hintText: '$textHint',
              helperText: '$textHelper',
              labelText: '$textLabel',
              prefixIcon: Icon(
                icon,
                color: Colors.green,
              ),
              prefixText: ' ',
            ),
          ),
        ),
      ),
    );
  }
}

