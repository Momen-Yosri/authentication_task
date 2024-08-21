import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  String label;
  String hint;
  TextInputType keyboardType;
  bool obsecureText = false;
  bool ispassword ;

   CustomTextFormField({required this.label,required this.hint,required this.keyboardType,this.obsecureText=false,this.ispassword=false});

  @override
  Widget build(BuildContext context) {
    return Column( crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(label),
      SizedBox(height: 7,),
        TextFormField(
          decoration: InputDecoration(hintText:hint,border:OutlineInputBorder() ,suffixIcon:ispassword ? IconButton(
      icon: Icon(Icons.visibility_off_outlined) ,
      onPressed: () {}         
    ):null
          ),
        ),
      ],
    );
  }
}