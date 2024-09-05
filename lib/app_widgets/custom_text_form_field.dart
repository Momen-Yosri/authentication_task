import 'package:authentication_task/style/my_theme_data.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  String label;
  String hint;
  TextInputType keyboardType = TextInputType.text;
  bool obsecureText = false;
  bool ispassword = false;
  String? Function(String?) validator;
  TextEditingController controller;

  CustomTextFormField(
      {super.key,
      required this.label,
      required this.hint,
      this.keyboardType = TextInputType.text,
      this.obsecureText = false,
      this.ispassword = false,
      required this.validator,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: MyThemeData.lightTheme.textTheme.bodySmall,
        ),
        SizedBox(height: 7),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(),
              suffixIcon: ispassword
                  ? IconButton(
                      icon: Icon(Icons.visibility_off_outlined),
                      onPressed: () {})
                  : null),
          validator: validator,
        ),
      ],
    );
  }
}
