import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_api/screen/category/provider/category_provider.dart';
import 'package:wallpaper_api/screen/dash/provider/dash_provider.dart';
import 'package:wallpaper_api/screen/home/provider/home_provider.dart';
import 'package:wallpaper_api/utils/app_routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DashProvider(),),
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
        ChangeNotifierProvider(create: (context) => CategoryProvider(),),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routes: app_routes,
      ),
    ),
  );
}
