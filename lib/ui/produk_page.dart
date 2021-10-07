import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Produk"),
      ),
      body: ListView(
        children: [
          //list1
          Card(
            child: ListTile(title: Text("Kulkas"),
            subtitle: Text("2500000"),),
          ),
          //list 2
          Card(
            child: ListTile(title: Text("TV"),
            subtitle: Text("5000000"),),
          ),
          //list 3
           Card(
            child: ListTile(title: Text("Mesin Cuci"),
            subtitle: Text("1500000"),),
          ),
        ],
      ),
    );
  }
}