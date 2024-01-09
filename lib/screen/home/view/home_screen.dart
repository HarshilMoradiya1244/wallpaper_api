import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: GridView.builder(
                  gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 2),
                  itemBuilder:(context, index) {
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    );
                  },)
          ),
        ),
      ),
    );
  }
}
