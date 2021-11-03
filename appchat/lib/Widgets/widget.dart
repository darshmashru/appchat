import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration(String hintText){
  return InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black54
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red) ),
  );
}

TextStyle simpleTextStyle()
{
  return TextStyle(color: Colors.white54,
  fontSize: 16);
}

TextStyle mediumTextStyle()
{
  return TextStyle(color: Colors.white54,
  fontSize: 18);
}
