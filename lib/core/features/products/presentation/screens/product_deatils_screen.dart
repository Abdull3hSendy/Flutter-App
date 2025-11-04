 import 'package:bootcamb_1/core/features/products/data/models/product_dto.dart';
import 'package:flutter/material.dart';

class ProductDeatilsScreen extends StatelessWidget {
  final ProductDto product ;
  const ProductDeatilsScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
final images = product.images.isNotEmpty ? product.images :[product.thumbnail];
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar:AppBar(
          backgroundColor: Colors.black,
          title:Text(product.title,style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2))) ,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(
              height: 260,
              child: PageView.builder(
                  itemCount:images.length ,
                  itemBuilder: (context,index)
                  {
                    final img=images[index];
                    return Image.network(img,
                      fit:BoxFit.cover,
                      errorBuilder:(c,e,s)=>Container(color: Colors.grey,
                      child:const Icon(Icons.broken_image,size: 80)
                      )
                    );
                  }
              ),
            ),
        /*
        Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  product.thumbnail,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.fill
                ),
              ),
            ),

          */
          const SizedBox(height:20),
                Text(product.title,style:
                 const   TextStyle(
                 fontSize: 22 ,
                 fontWeight: FontWeight.bold)),
          const SizedBox(height:20),
                Text("${product.price}(SAR)",style:
                const TextStyle(
                fontSize: 20 ,
                fontWeight: FontWeight.bold)),
          const SizedBox(height:20),
                Text(product.description,
                style:const TextStyle(
                fontSize: 18 ,
                fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
