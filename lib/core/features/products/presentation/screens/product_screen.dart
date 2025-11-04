import 'package:bootcamb_1/core/configration/Data/DemoData.dart';
import 'package:bootcamb_1/core/features/products/data/models/product_dto.dart';
import 'package:bootcamb_1/core/features/products/data/servecies/products_api.dart';
import 'package:bootcamb_1/core/features/products/presentation/screens/product_deatils_screen.dart';
import 'package:bootcamb_1/core/features/products/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late Future<List<ProductDto>> _futureProducts;

  @override
  void initState() {
    super.initState();
    _futureProducts = ProductsApi.fetchallProducts();
  }

  void _reLoad() {
    setState(() {
      _futureProducts = ProductsApi.fetchallProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
 //   final products = DemoAuthService.getAll();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Products', style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2)),
          actions: [
            IconButton(onPressed: _reLoad,
                icon: const Icon(Icons.refresh))
          ]),
      body: FutureBuilder(
        future: _futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.error_outline, size: 48, color: Colors.red),
                    const SizedBox(height: 12),
                    Text(
                        'Error:${snapshot.error}', textAlign: TextAlign.center),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(icon: Icon(Icons.refresh),
                        label: Text("Retry"), onPressed: _reLoad)
                  ],
                ),

              ),
            );
          }

          final products = snapshot.data ?? [];
          if (products.isEmpty) {
            return const Center (child: Text('No products available '));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: products.length,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final p = products[index];
              return ProductCard(
                product: p,
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (_) => ProductDeatilsScreen(product: p)));
                },
              );
            },
          );
        },
      ),
    );
  }

}
