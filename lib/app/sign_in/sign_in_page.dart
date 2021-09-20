// start by making a stateless widget
//import the material package by pressing alt+enter on stateless widget text
//go to main.dart to change the home tag

//put a scaffold widget here, and put the appbar widget
//for the sign in page, we need four boxes arranged in vertical fashion
//hence, in body under scaffold, put a child
//in child, put a column, and put children in that
//children is basically just a list of widgets
//if u don't put the sized box widget your orange box wont be seen
//define cross axis alignment inside column
//make a method to hold body of scaffold
//make the method private
//add padding
//now, if we dont care about the bg color of the app(yellow) we can return padding instead of container
//but make sure that u remove the color property in padding as it takes only one parameter, padding.
//for padding between the vertically placed widgets( here, container with a sized box), just add a sized box between the two widgets
//note: diff between sized box as a child inside container and sizedbox as alone widget is that container gives it a color, else it will just be bg color, hence not seen on the screen
//add main axis alignment
//add text and style- sign in
//add a button, see the color, text on in, how to activate it (onpressed), how to change shape
//making code reusable- custom elevated button and (skipped) sign in button
//change button height
//adding remaining buttons
//skipped 106 to 112- adding logo, 113/114- required annotation and assertions
//go to console.firebase.google.com and create new project. go to android icon after that.
//come to android/app/build.gradle file, and get application id,




import 'package:flutter/material.dart';
import 'package:flutter_course_app/common_widgets/custom_elevated_button.dart';

class SignInPage extends StatelessWidget
{
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: Text("eRecord Management for XYZ Hospital"),
          elevation: 30.0,
        ),
        body: _buildContent(),
    );
  }
    Widget _buildContent()
    {
      return Padding(
        padding: EdgeInsets.all(16.0),
        //color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Text(
             'Sign In',
             textAlign: TextAlign.center,
           style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            )
           ),
           SizedBox(height: 8.0),
           CustomElevatedButton(
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed:  () {}, //1st bracket is for parameters
                borderRadius: 16.0,
                color: Colors.orange,

              ),

            SizedBox(height: 8.0),
            CustomElevatedButton(
              child: Text(
                'Sign in with Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed:  () {}, //1st bracket is for parameters
              borderRadius: 16.0,
              color: Colors.blueAccent,

            ),
            SizedBox(height: 8.0),
            CustomElevatedButton(
              child: Text(
                'Sign in with email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed:  () {}, //1st bracket is for parameters
              borderRadius: 16.0,
              color: Colors.green,

            ),
            SizedBox(height: 8.0),
            Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black38,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height:8.0),
            CustomElevatedButton(
              child: Text(
                'Go anonymous',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 20.0,
                ),
              ),
              onPressed:  () {}, //1st bracket is for parameters
              borderRadius: 16.0,
              color: Colors.yellowAccent,

            ),



          ],
        ),
      );
    }


  }

