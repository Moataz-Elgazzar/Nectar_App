import 'package:flutter/material.dart';


pushWithReplacment(BuildContext context , Widget screen){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
}


pushTO(BuildContext context , Widget screen){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
}