import 'package:flutter/material.dart'; 
 
class CustomTextField extends StatelessWidget { 
  CustomTextField({super.key, this.hintText, this.inputType,
this.onChanged,this.obsecureText=false}); 
  final String? hintText; 
  Function(String)? onChanged; 
  bool? obsecureText; 
  TextInputType? inputType;
  @override 
  Widget build(BuildContext context) { 
    return TextField( 
      obscureText:obsecureText! , 
      keyboardType: inputType,
      onChanged: onChanged, 
      decoration: InputDecoration( 
        hintText: hintText, 
        hintStyle: TextStyle(color: Colors.grey), 
        enabledBorder: OutlineInputBorder( 
          borderSide: BorderSide( 
            color: Colors.grey, 
            
          ),
          borderRadius: BorderRadius.circular(16),
        ), 
        border: OutlineInputBorder( 
          borderSide: BorderSide( 
            color: Colors.grey, 

          ), 
          borderRadius: BorderRadius.circular(16),
        ), 
      ), 
    ); 
  } 
} 
