import 'package:authentication_task/style/my_theme_data.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/diploma_image.png"),
          Text(
            "Flutter Diploma",
            style: MyThemeData.lightTheme.textTheme.bodyLarge,
          ),
          Text("50 Students Enrolled",
              style: MyThemeData.lightTheme.textTheme.bodyMedium),
          SizedBox(
              width: width * 0.5,
              height: height * 0.053,
              child:
                  ElevatedButton(onPressed: () {}, child: Text("Enroll Now")))
        ],
      ),
    );
  }
}
