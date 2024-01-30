import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//? Button for submit login
Widget defaultButton({
  required double width,
  required Color background,
  required function,
  required String text,
  bool isUpperCase = true,
  double radius = 0.0,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
///////////////////////////////////////////////////////////////////////
//?  Reuse TextFormFiled
Widget defaultTextFormFiled({
  // required TextEditingController controller,
  required TextInputType type,
  required validate,
  required String labelText,
  required IconData prefixIcon,
  //! this for password textFormFiled
  bool isPassword =false,
  IconData? suffixIcon,
  dynamic  suffixPressed,
}) =>
    TextFormField(
      //* control text filed input and take the value input
      //controller: controller,
      // to show @ sign in keyboard
      keyboardType: type,
      //* function to validation
      validator: validate,
      //** How function working */
      // (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter your Email';
      //   }
      //   return null;
      // },
      //! this for password textFormFiled
      //to hide password while you write common use is "false".
        obscureText: isPassword,
              

      decoration: InputDecoration(
        //* hide when you write
        //* hintText: 'Email',
        //?  still shown although you write
        labelText: labelText,
        //this style shared to all labelText you call it back.
        labelStyle: const TextStyle(
          fontSize: 25,
        ),
        prefixIcon: Icon(
          prefixIcon,
        ),
        //! for password and not required to use 
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffixIcon,
          ),
        ), 
        border: const OutlineInputBorder(),

      ),
    );
