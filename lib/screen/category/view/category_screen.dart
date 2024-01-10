import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_api/screen/category/provider/category_provider.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  CategoryProvider? providerr;
  CategoryProvider? providerw;
  @override
  Widget build(BuildContext context) {
    providerr = context.read<CategoryProvider>();
    providerw = context.watch<CategoryProvider>();
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: providerw!.categoryList.length,
          itemBuilder: (context, index) {
           return Container(

             height: MediaQuery.sizeOf(context).height*3,
             decoration: BoxDecoration(color: Colors.greenAccent),
           );
        },),
      ),
    );
  }
}
