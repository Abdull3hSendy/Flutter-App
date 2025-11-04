
import 'package:bootcamb_1/core/features/categories/presentaion/screens/categories_screen.dart';
import 'package:bootcamb_1/core/features/products/data/models/product_dto.dart';
import 'package:bootcamb_1/core/features/products/presentation/screens/product_deatils_screen.dart';
import 'package:bootcamb_1/core/features/products/presentation/screens/product_screen.dart';
import 'package:bootcamb_1/core/features/products/presentation/widgets/product_card.dart';
import 'package:bootcamb_1/core/features/splachscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       initialRoute: "/product",
       routes: {
        "/product":(_)=>const ProductScreen(),
          "CategoriesHome":(_)=> const CategoriesScreen(),

       },
       // home:const Splachscreen(),
     // home:ProductScreen() ,
    );
  }
}
