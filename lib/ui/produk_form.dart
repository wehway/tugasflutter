import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertamaku/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
    final _kodeProdukTextboxController = TextEditingController();
    final _namaProdukTextboxController = TextEditingController();
    final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Produk"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

// ignore: unused_element
_textboxKodeProduk() {
  return TextField(
    decoration: InputDecoration(labelText: "Kode Produk"),
    controller: _kodeProdukTextboxController,
  );
}
 
// ignore: unused_element
_textboxNamaProduk() {
  return TextField(
    decoration: InputDecoration(labelText :"Nama Produk"),
    controller: _namaProdukTextboxController,
  );
}

// ignore: unused_element
_textboxHargaProduk() {
  return TextField(
    decoration: InputDecoration(labelText: "Harga Produk"),
    controller: _hargaProdukTextboxController,
  );
}

_tombolSimpan() {
  return ElevatedButton(
    child: Text("Simpan"),
    onPressed: () {
      // ignore: non_constant_identifier_names
      String kode_produk = _kodeProdukTextboxController.text;
      // ignore: non_constant_identifier_names
      String nama_produk = _namaProdukTextboxController.text;
      int harga = int.parse(_hargaProdukTextboxController.text); //parsing dari String ke int
        //pindah ke halaman produk Detail dan mengirim data
          Navigator.of(context).push(new MaterialPageRoute(builder: (context) => ProdukDetail(kodeProduk: kode_produk, namaProduk: nama_produk, harga: harga,)));

    },
  );
}
}