import 'package:bootcamb_1/core/features/categories/data/models/category_dto.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final CategoryDto category ; 
  final VoidCallback ontap;
  const CategoryCard({super.key,required this.category,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child:Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: ClipRRect(
              borderRadius:const BorderRadius.vertical(top:Radius.circular(16)),
              child: Image.asset(
                category.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )),
            Padding(padding:const EdgeInsets.all(8.0),
            child:Text(category.name,style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
              )
          ],
        ),
        
      ) ,
    );
  }
}
