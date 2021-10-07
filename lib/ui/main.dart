import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:aplikasi_flutter_pertamaku/ui/produk_form.dart';
// ignore: unused_import
import 'package:aplikasi_flutter_pertamaku/ui/produk_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      home: ProdukPage(),
    );
  }
}