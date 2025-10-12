import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

class CustomTextformfield extends StatefulWidget {
  const CustomTextformfield({super.key, required this.hint, required this.isPassword});
final String hint;
final bool isPassword;
  @override
  State<CustomTextformfield> createState() => _CustomTextformfieldState();
}

class _CustomTextformfieldState extends State<CustomTextformfield> {



  @override
  late bool obscuretext;
  void initState(){
    obscuretext=widget.isPassword;
  }
  void _togglePassword(){
    setState(() {
      obscuretext=!obscuretext;
      Icon(CupertinoIcons.eye_slash_fill);
    });
  }
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (v) {
        if(v==null){
          return 'Please Fill ${widget.hint}';
        }
        null;
      },
      obscureText: obscuretext,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
          hintText: widget.hint,
          filled: true,
          fillColor: Colors.white,
          suffixIcon:
          widget.isPassword ?
          GestureDetector(
                  onTap: _togglePassword,
                  child: Icon(CupertinoIcons.eye_fill)):null,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white))
      ),
    );
  }
}
