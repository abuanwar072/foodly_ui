import 'package:flutter/material.dart';
import '../../../components/cards/iteam_card.dart';
import '../../../constants.dart';
import '../../addToOrder/add_to_order_screen.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTabController(
          length: demoTabs.length,
          child: TabBar(
            isScrollable: true,
            unselectedLabelColor: titleColor,
            labelStyle: Theme.of(context).textTheme.titleLarge,
            onTap: (value) {
              // you will get selected tab index
            },
            tabs: demoTabs,
          ),
        ),
        // SizedBox(height: defaultPadding),
        ...List.generate(
          demoData.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: ItemCard(
              title: demoData[index]["title"],
              description: demoData[index]["description"],
              image: demoData[index]["image"],
              foodType: demoData[index]['foodType'],
              price: demoData[index]["price"],
              priceRange: demoData[index]["priceRange"],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddToOrderScrreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

final List<Tab> demoTabs = <Tab>[
  const Tab(
    child: Text('Most Populars'),
  ),
  const Tab(
    child: Text('Beef & Lamb'),
  ),
  const Tab(
    child: Text('Seafood'),
  ),
  const Tab(
    child: Text('Appetizers'),
  ),
  const Tab(
    child: Text('Dim Sum'),
  ),
];

final List<Map<String, dynamic>> demoData = List.generate(
  3,
  (index) => {
    "image": "assets/images/featured _items_${index + 1}.png",
    "title": "Cookie Sandwich",
    "description": "Shortbread, chocolate turtle cookies, and red velvet.",
    "price": 7.4,
    "foodType": "Chinese",
    "priceRange": "\$" * 2,
  },
);
