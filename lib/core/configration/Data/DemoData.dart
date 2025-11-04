import 'package:bootcamb_1/core/features/categories/data/models/category_dto.dart';
import 'package:bootcamb_1/core/features/products/data/models/product_dto.dart';
import 'package:flutter/foundation.dart';

class DemoAuthService
{
  //Customers
  final List<Map<String,String>> _users = [
    {'email' : 'admin', 'password':'123','name':'admin'}
  ];

  bool Login(String email , String password)
  {
    return _users.any((u)=>u['email']==email && u['password']==password);
  }

  bool SignUp(String name , String email , String password)
  {
    if(_users.any((u)=>u['email']== email) ) return false;
    _users.add(  {'email' : email, 'password':password,'name':name});
    return true ;
  }

  //Products
   /*
  static List<ProductDto> getAll() {
   return [
    ProductDto(
    id: 1,
    productName: 'Laptop Dell XPS',
    price: 3500,
    qty: 5,
    categoryName: 'Technology',
    description: 'High performance laptop for developers.',
    imagePath: 'https://via.placeholder.com/400x240.png?text=Laptop+Dell',
    ),
    ProductDto(
    id: 2,
    productName: 'Football - Nike',
    price: 120,
    qty: 20,
    categoryName: 'Sports',
    description: 'FIFA approved official size football.',
    imagePath: 'https://via.placeholder.com/400x240.png?text=Football',
    ),
    ProductDto(
    id: 3,
    productName: 'Flutter Book',
    price: 80,
    qty: 50,
    categoryName: 'Education',
    description: 'Step by step Flutter guide.',
    imagePath: 'https://via.placeholder.com/400x240.png?text=Flutter+Book',
    ),
    ProductDto(
    id: 4,
    productName: 'Headphones',
    price: 220,
    qty: 10,
    categoryName: 'Technology',
    description: 'Noise cancelling headphones.',
    imagePath: 'https://via.placeholder.com/400x240.png?text=Headphones',
    ),
    ProductDto(
       id: 5,
       productName: 'Headphones',
       price: 220,
       qty: 10,
       categoryName: 'Technology',
       description: 'Noise cancelling headphones.',
       imagePath: 'https://via.placeholder.com/400x240.png?text=Headphones',
     ),
    ProductDto(
       id: 1,
       productName: 'Laptop Dell XPS',
       price: 3500,
       qty: 5,
       categoryName: 'Technology',
       description: 'High performance laptop for developers.',
       imagePath: 'https://via.placeholder.com/400x240.png?text=Laptop+Dell',
     ),
    ProductDto(
       id: 2,
       productName: 'Football - Nike',
       price: 120,
       qty: 20,
       categoryName: 'Sports',
       description: 'FIFA approved official size football.',
       imagePath: 'https://via.placeholder.com/400x240.png?text=Football',
     ),
    ProductDto(
       id: 3,
       productName: 'Flutter Book',
       price: 80,
       qty: 50,
       categoryName: 'Education',
       description: 'Step by step Flutter guide.',
       imagePath: 'https://via.placeholder.com/400x240.png?text=Flutter+Book',
     ),
    ProductDto(
       id: 4,
       productName: 'Headphones',
       price: 220,
       qty: 10,
       categoryName: 'Technology',
       description: 'Noise cancelling headphones.',
       imagePath: 'https://via.placeholder.com/400x240.png?text=Headphones',
     ),
    ProductDto(
       id: 5,
       productName: 'Headphones',
       price: 220,
       qty: 10,
       categoryName: 'Technology',
       description: 'Noise cancelling headphones.',
       imagePath: 'https://via.placeholder.com/400x240.png?text=Headphones',
     ),
    ProductDto(
       id: 6,
       productName: 'Headphones',
       price: 220,
       qty: 10,
       categoryName: 'Technology',
       description: 'Noise cancelling headphones.',
       imagePath: 'https://via.placeholder.com/400x240.png?text=Headphones',
     )
   ];
  }
 */
//Category
 final List<CategoryDto> Categories = [
   CategoryDto(
       id: 1,
       name: 'Technology',
       describtion: 'All tech courses & gadgets',
       imageUrl: 'computer'),
   CategoryDto(id: 2, name: 'Education', describtion: 'Courses and books', imageUrl:  'school'),
   CategoryDto(id: 3, name: 'Sports', describtion: 'Sports equipment', imageUrl: 'sports'),
   CategoryDto(id: 4, name: 'Health', describtion: 'Health & wellness', imageUrl: 'health')
 ];

}