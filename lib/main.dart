//import package
//tell flutter to run your app in main
//write stless and get a template for stateless widget
// put a material widget in build

//go to sign_in_page.dart and do
//come back and change 'home' in material widget to point to an instance of sign_in_page, import relevant package as well with alt+enter
//themedata controls the colors and textures of widgets

//

import 'package:flutter/material.dart';
import 'package:flutter_course_app/app/sign_in/sign_in_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
     return MaterialApp
       (
          title: 'Time Tracker',
          theme: ThemeData(
          primarySwatch: Colors.indigo),
          home: SignInPage(),
        );
    }
}

