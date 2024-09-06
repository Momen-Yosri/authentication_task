import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const AppButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        child: Text(title,
       ),
      ),
    );
  }
}
