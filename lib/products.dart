import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled9/controller/productController.dart';
class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    var controller=Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('products'),
      ),
      body: ListView.builder(
        itemBuilder: (context,index) {
          var data=controller.productList[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(''),
            ),
            title: Text("Name"),
            subtitle: Text("Rating"),
            trailing: Text("price"),
          );
        }
      ),
    );
  }
}
