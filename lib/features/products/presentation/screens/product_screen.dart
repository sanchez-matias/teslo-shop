import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_shop/features/products/presentation/providers/product_provider.dart';

// We are using a StateNotifierProvider with the .autodispose modification
// so if we want to use its dependency here we need to preserve the state
// until we don't need it anymore. For that, using a ConsumerStatefulWidget
// is not an option. Instead we're using a ConsumerWidget.

class ProductScreen extends ConsumerWidget {
  final String productId;

  const ProductScreen({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productState = ref.watch(productProvider(productId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_rounded),
          )
        ],
      ),
      body: Center(
        child: Text(productState.product?.title ?? 'Loading'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save_rounded),
      ),
    );
  }
}
