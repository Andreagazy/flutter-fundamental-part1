import 'package:flutter/material.dart';
import 'package:hello_world/models/item.dart';
import 'package:hello_world/widgets/footer.dart';
import 'package:hello_world/widgets/item_card.dart';

// class HomePage extends StatelessWidget {
//   final List<Item> items = [
//     Item(
//       name: 'Sugar',
//       price: 5000,
//     ),
//     Item(
//       name: 'Salt',
//       price: 1000,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter layout demo'),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(8),
//         child: ListView.builder(
//             padding: EdgeInsets.all(8),
//             itemCount: items.length,
//             itemBuilder: (context, index) {
//               final item = items[index];
//               return InkWell(
//                   onTap: () {
//                     // Navigate using named route and pass the selected item as arguments
//                     Navigator.pushNamed(
//                       context,
//                       '/item',
//                       arguments: item, // Send item as argument
//                     );
//                   },
//                   child: Card(
//                     child: Container(
//                       margin: EdgeInsets.all(8),
//                       child: Row(
//                         children: [
//                           Expanded(child: Text(item.name)),
//                           Expanded(
//                             child: Text(
//                               item.price.toString(),
//                               textAlign: TextAlign.end,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ));
//             }),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl:
          'https://lirp.cdn-website.com/cbf48001/dms3rep/multi/opt/shutterstock_2463705563-640w.jpg',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 1000,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-2RlH8CeOfntXBFBM3A0SsTnWLiHwXaEHLw&s',
      stock: 50,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(item: item);
                },
              ),
            ),
            // Menggunakan Foo  ter widget
            Footer(name: 'Andreagazy Iza Amerianto', nim: '2241720146'),
          ],
        ),
      ),
    );
  }
}
