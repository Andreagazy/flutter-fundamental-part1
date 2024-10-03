import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,  // Atur lebar gambar
      height: 100,  // Atur tinggi gambar
      child: Image(
        image: AssetImage("lib/img/logo_polinema.png"),
        fit: BoxFit.contain,  // Gambar akan sesuai dengan ukuran yang ditetapkan
      ),
    );
  }
}
