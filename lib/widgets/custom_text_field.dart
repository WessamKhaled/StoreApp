
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key,this.hintText,this.onChanged,this.obscureText = false,this.inputType});
  String? hintText;
  TextInputType? inputType;
  Function(String)? onChanged;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: inputType,

      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        // hintStyle: TextStyle(color: Colors.white),

        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
