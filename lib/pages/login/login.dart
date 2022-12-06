

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 90.h,),
            Center(
              child: Container(
              
                height: 150.h,
                width: 150.w,
                child: CircleAvatar(
                 
                  child: Text("LOGO"),
                ),
              ),
            ), 
            SizedBox(height: 45.h,), 
            Container(child: Text("Sign In", 
            style: TextStyle(fontSize: 32.sp, fontFamily: 'Roboto'),
            ),), 
            SizedBox(height: 45.h,), 
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration: InputDecoration(
                  
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r)
                 )
                ),
              ),
            ),
 SizedBox(height: 15.h,), 
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration: InputDecoration(
                  
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r)
                 )
                ),
              ),
            ),
 SizedBox(height: 40.h,), 
            Container(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              alignment: Alignment.center,
              height: 69.h,
              width: 328.w,
              decoration: BoxDecoration(
                color: Color(0xff64C75B), 

                borderRadius: BorderRadius.circular(30.r)
              ),
              child:  Text("LOGIN", 
            style: TextStyle(fontSize: 32.sp, 
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
            ),
            )
          ],
        ),
      ),
    );
  }
}