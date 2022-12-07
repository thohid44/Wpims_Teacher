import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wpims_teacher/Widgets/custom_appbar.dart';
import 'package:wpims_teacher/Widgets/icons.dart';
import 'package:wpims_teacher/utils/constants/colors.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final controller = ScrollController();
  bool isLooding = true; 
  bool isEmptyData = false; 
  int page= 1; 
  bool hasMorePage = true; 
  String message = "No Data Found"; 
  Random random = Random(); 
  Future _refresh(){
    setState(() {
      isLooding= true; 
      page=1; 
      hasMorePage=true;
    });
    return getData(); 
  }
  Future getData() async{

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
      appBar: customAppBar('News & Events', Colors.black),
      
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.separated(
          
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.h,); 
        },
        controller: controller,
        itemCount: isLooding?8 : 10,
        physics: const ScrollPhysics(),
        itemBuilder:((context, index) {
          return Stack(
            children: [
              Container(
                width: double.infinity, 
                margin: EdgeInsets.only( right: 12.0.h),
                
                height: 150.h, 
                decoration: BoxDecoration(
                  color: randomColors[
                    random.nextInt(randomColors.length)
                  ], 
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0.r)
                  )
                ),
              ),  
            InkWell(
              child:  Container(
              height: 150.h, 
              margin: EdgeInsets.only(left: 12.0.w),
              padding: EdgeInsets.symmetric(horizontal: 15.w, 
              vertical: 10.h),
             decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.all(
                Radius.circular(8.0.r), 
              ), 
              boxShadow: [
                BoxShadow(
                  color: bgGrey.withOpacity(0.2), 
                  spreadRadius: 2, 
                  blurRadius: 7, 
                  offset: const Offset(3, 7)
                ), 
              ]
             ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
 Flexible(child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
        width: double.infinity.w,
        child: Text("This is notice content")), 

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
iconText(icon: Icons.calendar_month, label:"2022-12-22"),
iconText(icon: Icons.announcement_outlined, label:"News"),
iconText(icon: Icons.tag, label:"School Order")
          ],
        )
  ],
  
 )
 
 )
                    ],
                  ),
             ),
            )
            ],
          );
        }), 

        ),
      )
    ),
    
    );
  }
}