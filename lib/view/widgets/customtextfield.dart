import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class customTextField extends StatelessWidget {
  const customTextField({super.key, required this.hint, this.maxlines=1});
final String hint;
final int maxlines;




  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: primaryColor,   //مؤشر الكتابة   
      decoration:InputDecoration(
        border: o(),
        enabledBorder: o(),
        focusedBorder: o(primaryColor),
        hintText:hint,
        hintStyle: TextStyle(color: primaryColor)
      
      )
        
  
     ) ;
  }
}
OutlineInputBorder o([color]){
  return   OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          
          borderSide: BorderSide(
            
            color:color?? Colors.white)
        );
}