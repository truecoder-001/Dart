import 'package:flutter/material.dart';
import 'package:flutter_application_3/cart_button.dart';
import 'package:flutter_application_3/cart_list_item.dart';
import 'package:flutter_application_3/product_list_item.dart';
import 'package:flutter_application_3/products_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Map<String, CartListItem> cartItemsMap = {};

  @override
  Widget build(BuildContext context) {
    final totalCount = cartItemsMap.values.fold<int>(
      0,
      (previousValue, element) => previousValue + element.quantity,
    );

    return Stack(
      children: [
        ProductsPage(
          onAddToCart: addToCart,
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: GestureDetector(
            onTap: () {},
            child: CartButton(
              count: totalCount,
            ),
          ),
        )
      ],
    );
  }

  void addToCart(ProductListItem item) {
    CartListItem? existingItem = cartItemsMap[item.id];
    if (existingItem != null) {
      existingItem = CartListItem(
        product: existingItem.product,
        quantity: existingItem.quantity + 1,
      );
      cartItemsMap[item.id] = existingItem;
      setState(() {});
    } else {
      setState(() {
        final cartItem = CartListItem(
          product: item,
          quantity: 1,
        );
        cartItemsMap[item.id] = cartItem;
      });
    }
  }
}
