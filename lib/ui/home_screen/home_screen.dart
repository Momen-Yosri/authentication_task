import 'package:authentication_task/providers/app_config_Provider.dart';
import 'package:authentication_task/style/colors.dart';
import 'package:authentication_task/style/my_theme_data.dart';
import 'package:authentication_task/ui/home_screen/widets/courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../register_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Scaffold(
        appBar: AppBar(
            leading: Image.asset("assets/images/leading_logo.png"),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Route",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  "Enjoy our courses",
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ],
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.dark_mode,
                    color: Color(0xff004182),
                    size: 24,
                  ),
                  onPressed: () {
                    print("################################################################");
                    provider.ChangeThemeMode(ThemeMode.light);
                  }),
              IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.black,
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RegisterScreen.routeName);
                  }),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Featured Courses",
                style: GoogleFonts.manrope(
                  color: Color(0xff004182),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 13),
              SizedBox(
                height: 250, // Adjust height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Courses();
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    "Best Selling ",
                    style: MyThemeData.lightTheme.textTheme.headlineMedium,
                  ),
                  Text(
                    "Courses",
                    style: MyThemeData.lightTheme.textTheme.headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: GoogleFonts.manrope(
                          decoration: TextDecoration.underline,
                          color: MyColors.blackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ))
                ],
              ),
              Container(
                color: Color(0xffffffff),
                height: MediaQuery.of(context).size.height * 0.0885,
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.symmetric(vertical: 7),
                child: Row(
                  children: [
                    Image.asset("assets/images/best_selling_courses.png"),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Basics Diploma ",
                          style: MyThemeData.lightTheme.textTheme.bodyLarge,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Text("250 Studens Enrolled",
                            style: MyThemeData.lightTheme.textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
