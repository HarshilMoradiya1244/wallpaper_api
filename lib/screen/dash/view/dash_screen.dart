import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_api/screen/dash/provider/dash_provider.dart';
import 'package:wallpaper_api/screen/home/provider/home_provider.dart';

import '../../home/view/home_screen.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  DashProvider? providerr;
  DashProvider? providerw;

  List<Widget> screen = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();

    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Wallpaper"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: providerw!.currentIndex,
            fixedColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: Colors.black,), label: "Home",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded,color: Colors.black,), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined,color: Colors.black,), label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined,color: Colors.black,), label: "Settings"),
            ],
            onTap: (value) {
              int i = value;
              providerr!.changeIndex(i);
            },
          ),
          body: screen[providerr!.currentIndex],
        ),
      ),
    );
  }
}
