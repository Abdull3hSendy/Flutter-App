 import 'package:bootcamb_1/core/features/products/data/models/product_dto.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductDto product;
  final VoidCallback ontap;

  const ProductCard({super.key ,required this.product,required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
         onTap:ontap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              color: Colors.grey.shade400,
              child:product.thumbnail.isNotEmpty?Image.network(
                product.thumbnail,
              fit: BoxFit.cover,
              loadingBuilder: (context, child,progress){
                  if(progress==null)return child;
                  return const Center(child: CircularProgressIndicator());
              },
              errorBuilder:  (context, error,stackTrace)=> const Icon(Icons.broken_image,size:48))
                                                          : const Icon(Icons.image,size: 48)
            ),
            Expanded(
                child:Padding(
                    padding:const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.title??"UnNamed",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:TextStyle(
                              fontSize:16,color: Colors.black
                          )),
                      const SizedBox(height: 8,),
                      Text(product.description??"_",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:TextStyle(
                              fontSize:12,color: Colors.grey.shade600
                          )),
                      const SizedBox(height: 8,),
                      Text(product.price.toString() ,
                          style:TextStyle(
                              fontSize:12,color: Colors.red
                          )),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.inventory, size: 16,color: Colors.grey.shade700),
                          const SizedBox(width: 8),
                          Text("Qty:${product.price ?? 0 }", style: TextStyle(color:Colors.grey.shade800 ))

                        ],
                      )
                    ]
                )))



          ],
        ),
      )
      );

  }
}

Widget _imgPlaceholder() => Container(
  color: Colors.grey.shade200,
  child: const Icon(Icons.image,size: 36 ,color:Colors.grey),
);

String _formatPrice(num? price){
  if(price ==null ) return "_";
  return "${price.toStringAsFixed(2)}(SAR)" ;
}