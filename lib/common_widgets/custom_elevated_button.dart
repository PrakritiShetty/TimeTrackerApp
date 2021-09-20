//stless
//import


import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  CustomElevatedButton({
    this.child,
    this.color: Colors.white,
    this.borderRadius: 2.0,
    this.onPressed,
    this.height: 50.0,
});
  final Widget? child;
  final Color color;
  final double borderRadius;
  final VoidCallback? onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
  return SizedBox(
    height: height,
    child: ElevatedButton(
        onPressed:  (){}, //1st bracket is for parameters
        child: child,


         style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                                Radius.circular(borderRadius),
                               ),
                             ),
                           ),

                      ),
          ),
  );
  }
}
