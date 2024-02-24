import 'package:flutter/material.dart'; 
 
class CustomButton extends StatelessWidget { 
  CustomButton({this.ontap,required this.text}); 
  VoidCallback? ontap; 
  String text; 
  @override 
  Widget build(BuildContext context) { 
    return GestureDetector( 
      onTap: ontap, 
      child: Container( 
        decoration: BoxDecoration( 
          color:  Color(0xff895737), 
          borderRadius: BorderRadius.circular(8), 
        ), 
        width: double.infinity, 
        height: 60, 
        child: Center(
          child: Text(text ,style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w400
          ),)
          ), 
      ), 
    ); 
  } 
} 
