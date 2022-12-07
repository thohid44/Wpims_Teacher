import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wpims_teacher/utils/constants/colors.dart';

Widget iconText({
  required IconData icon, 
  required String label, 
  Color? color = textColorSecondary, 
  double? size=15, 
  FontWeight fontWeight=FontWeight.bold

}){
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: 4.0.w,
    children: [
      Icon(icon, color: textDark, 
      size: size
      ,), 
  Text(label, style:TextStyle(
    fontSize: size, 
    color: color, 
    fontWeight: fontWeight
  ),)

    ],
  ); 
}