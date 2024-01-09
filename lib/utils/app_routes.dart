import 'package:flutter/material.dart';
import 'package:wallpaper_api/screen/dash/view/dash_screen.dart';
import 'package:wallpaper_api/screen/home/view/home_screen.dart';

Map<String,WidgetBuilder> app_routes = {
  '/':(context) => DashScreen(),
  'home':(context) => HomeScreen(),
};