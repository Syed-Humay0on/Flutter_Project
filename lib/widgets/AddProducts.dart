import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController prodName = TextEditingController();
    TextEditingController prodPrice = TextEditingController();
    TextEditingController prodDesc = TextEditingController();

  CollectionReference products = FirebaseFirestore.instance.collection('products');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Products"),
    ),
    body: SafeArea(child: 
      Column(children: [
        TextField(controller: prodName, decoration: const InputDecoration(hintText: "Product Name")),
        TextField(controller: prodPrice, decoration: const InputDecoration(hintText: "Product Price")),
        TextField(controller: prodDesc, decoration: const InputDecoration(hintText: "Product Description")),
        ElevatedButton(onPressed: () {
          products.add({
            "name": prodName.text,
            "price": prodPrice.text,
            "description": prodDesc.text,
          });
        }, child: const Text("Add Product"))
      ])) 
    );
  }
   
}

class FirebaseFirestore {
  static var instance;
}

class CollectionReference {
  void add(Map<String, String> map) {}
}
