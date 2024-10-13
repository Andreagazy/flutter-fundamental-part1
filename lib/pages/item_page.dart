import 'package:flutter/material.dart';
import 'package:hello_world/models/item.dart'; // Import the Item model

// class ItemPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Get the item passed through the route arguments
//     final Item? item = ModalRoute.of(context)?.settings.arguments as Item;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item?.name ?? 'Item'), // Use the item name as the title
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Item Name: ${item?.name ?? 'Unknown'}',
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Price: ${item?.price ?? 0}',
//               style: TextStyle(fontSize: 24),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan data item yang dikirim dari halaman sebelumnya
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menggunakan Hero untuk gambar yang sama dengan tag
            Hero(
              tag: 'itemImage-${item.name}',
              child: Image.network(
                item.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Price: Rp ${item.price}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Stock: ${item.stock}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 24),
                SizedBox(width: 4),
                Text('${item.rating}', style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
