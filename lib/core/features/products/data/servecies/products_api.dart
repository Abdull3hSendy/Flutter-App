import 'dart:convert';

import 'package:bootcamb_1/core/features/products/data/models/product_dto.dart';
import "package:http/http.dart" as http;
class ProductsApi
{
  static const String _base='https://dummyjson.com';
  static Future<List<ProductDto>> fetchallProducts() async
  {
    final url = Uri.parse('$_base/products');

    final response = await http.get(url,headers:{'Accept':'application/json'});
    if(response.statusCode==200){
      final Map<String,dynamic> body = jsonDecode(response.body);
      final List<dynamic> productsJson = body['products'] ?? [];
      final List<ProductDto> products = productsJson.
      map((item)=> ProductDto.fromJson(item as Map<String,dynamic>)).toList();
return products ;
    }else
    {
      throw Exception("Failed To fetch Products ");
    }
  }
}