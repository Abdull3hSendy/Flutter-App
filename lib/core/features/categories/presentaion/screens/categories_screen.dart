import 'package:bootcamb_1/core/configration/Data/DemoData.dart';
import 'package:bootcamb_1/core/features/categories/presentaion/screens/category_details_scree.dart';
import 'package:bootcamb_1/core/features/categories/presentaion/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = DemoAuthService().Categories;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Categories",style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
            letterSpacing: 3)),
          centerTitle: true),
      body: Padding(padding:const EdgeInsets.all(12.0),
      child: GridView.builder(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
                                                  crossAxisSpacing: 10,
                                                  mainAxisSpacing: 10,
                                                  childAspectRatio: 0.9),
          itemBuilder: (context,index){
            final category =categories[index];
            return CategoryCard(category: category,
                                ontap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=> CategoryDetailsScree(category:category)));
                                });
          },
          itemCount:categories.length )
       ),

    );
  }
}
