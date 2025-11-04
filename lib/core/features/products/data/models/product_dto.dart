

class ProductDto
{
  final int id ;
  final String title;
  final String description;
  final double price ;
  final String thumbnail ;
  final List<String> images;


  ProductDto({
    required this.id,
    required this.title,
    required this.description,
    required this .price,
    required this .thumbnail,
    required this .images
});

  factory ProductDto.fromJson(Map<String,dynamic> json){

    double _toDouble(dynamic v){
      if(v == null ) return 0.0 ;
      if(v is double) return v ;
      if(v is int) return v.toDouble();
      return double.tryParse(v.toString())?? 0.0 ;
    }

    List<String> _toImages(dynamic v) {
      if (v == null) return <String>[];
      if (v is List<dynamic>) return v.map((e) => e.toString()).toList();
      return <String>[];
    }
      return ProductDto(
        id:(json['id'] is int)? json['id'] as int : int.tryParse(json['id'].toString()) ?? 0,
        title:json['title']?.toString()??'',
        description:json['description']?.toString()??'',
        price: _toDouble(json['price']),
        thumbnail: json['thumbnail']?.toString() ?? '',
        images:_toImages(json['images'])
      );
    }




  }







