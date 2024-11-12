import 'package:flutter/material.dart';
import 'package:flutter_application_3/product_list_item.dart';
import 'package:flutter_application_3/product_list_item_view.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<ProductListItem> items = [
    ProductListItem(
      id: '1',
      name: 'Cupcake',
      description: 'A delicious cupcake with a variety of flavors and toppings',
      price: 3,
      imageUrl: 'assets/images/cupcake.png',
    ),
    ProductListItem(
      id: '2',
      name: 'Donut',
      description:
          'A soft and sweet donut, glazed or filled with your favorite flavors',
      price: 2,
      imageUrl: 'assets/images/donut.png',
    ),
    ProductListItem(
      id: '3',
      name: 'Eclair',
      description:
          'A long pastry filled with cream and topped with chocolate icing',
      price: 4,
      imageUrl: 'assets/images/eclair.png',
    ),
    ProductListItem(
      id: '4',
      name: 'Froyo',
      description:
          'A creamy and refreshing frozen yogurt with various toppings',
      price: 5,
      imageUrl: 'assets/images/froyo.png',
    ),
    ProductListItem(
      id: '5',
      name: 'Gingerbread',
      description:
          'A warm and spicy gingerbread cookie, perfect for the holidays',
      price: 2,
      imageUrl: 'assets/images/gingerbread.png',
    ),
    ProductListItem(
      id: '6',
      name: 'Honeycomb',
      description:
          'A sweet and crunchy honeycomb candy made from caramelized sugar',
      price: 3,
      imageUrl: 'assets/images/honeycomb.png',
    ),
    ProductListItem(
      id: '7',
      name: 'Ice Cream Sandwich',
      description:
          'A classic dessert made with ice cream sandwiched between two cookies or wafers',
      price: 4,
      imageUrl: 'assets/images/sandwich.png',
    ),
    ProductListItem(
      id: '8',
      name: 'Jelly Bean',
      description:
          'Colorful and chewy jelly beans in a variety of fruity flavors',
      price: 2,
      imageUrl: 'assets/images/jellybean.png',
    ),
    ProductListItem(
      id: '9',
      name: 'KitKat',
      description:
          'A chocolate-covered wafer bar with a satisfying crunch in every bite',
      price: 2,
      imageUrl: 'assets/images/kitkat.png',
    ),
    ProductListItem(
      id: '10',
      name: 'Key Lime Pie',
      description:
          'A tangy and sweet pie made with key lime juice, egg yolks, and sweetened condensed milk',
      price: 5,
      imageUrl: 'assets/images/keylimepie.png',
    ),
    ProductListItem(
      id: '11',
      name: 'Lollipop',
      description:
          'A sweet and hard candy on a stick, available in many flavors and shapes',
      price: 1,
      imageUrl: 'assets/images/lollipop.png',
    ),
    ProductListItem(
      id: '12',
      name: 'Marshmallow',
      description:
          'A soft and fluffy marshmallow, perfect for roasting or adding to your favorite treats',
      price: 2,
      imageUrl: 'assets/images/marshmallow.png',
    ),
    ProductListItem(
      id: '13',
      name: 'Nougat',
      description:
          'A chewy and nutty nougat candy made with sugar, honey, and nuts',
      price: 3,
      imageUrl: 'assets/images/nougat.png',
    ),
    ProductListItem(
      id: '14',
      name: 'Oreo',
      description:
          'A classic sandwich cookie with a sweet cream filling between two chocolate wafers',
      price: 2,
      imageUrl: 'assets/images/oreo.png',
    ),
    ProductListItem(
      id: '15',
      name: 'Pie',
      description:
          'A classic dessert made with a buttery crust and various fruit fillings',
      price: 6,
      imageUrl: 'assets/images/pie.png',
    ),
    ProductListItem(
      id: '16',
      name: 'Quince Tart',
      description:
          'A delightful tart filled with quince, a sweet and tangy fruit',
      price: 6,
      imageUrl: 'assets/images/quincetart.png',
    ),
    ProductListItem(
      id: '17',
      name: 'Red Velvet Cake',
      description:
          'A rich and moist cake with a distinctive red hue, layered with cream cheese frosting',
      price: 7,
      imageUrl: 'assets/images/redvelvetcake.png',
    ),
    ProductListItem(
      id: '18',
      name: 'Snow Cone',
      description:
          'A refreshing and icy treat made from crushed ice and flavored syrup',
      price: 3,
      imageUrl: 'assets/images/snowcone.png',
    ),
    ProductListItem(
      id: '19',
      name: 'Tiramisu',
      description:
          'An elegant Italian dessert made with layers of coffee-soaked ladyfingers and a rich mascarpone cheese cream',
      price: 7,
      imageUrl: 'assets/images/tiramisu.png',
    ),
    ProductListItem(
      id: '20',
      name: 'Upside Down Cake',
      description:
          'A delicious cake baked with a layer of fruit and caramel on the bottom, then inverted to serve',
      price: 6,
      imageUrl: 'assets/images/upsidedowncake.png',
    ),
    ProductListItem(
      id: '21',
      name: 'Vanilla Ice Cream',
      description:
          'A classic and creamy vanilla ice cream, enjoyed by itself or with your favorite toppings',
      price: 4,
      imageUrl: 'assets/images/vanillaicecream.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ProductListItemView(
          item: item,
        );
      },
    );
  }
}
