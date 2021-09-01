import 'package:flutter/material.dart';
import 'package:foods_app/models/product_model.dart';
import 'package:foods_app/screen/widgets/single_item_widget.dart';

class Search extends StatefulWidget {
  final List<ProductModel> search;
  Search({required this.search});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // List<ProductModel> searchItem(String query){
  // List<ProductModel>searchFood = widget.search.where((element){
  //   return element.productName.toLowerCase().contains(query);
  // }).toString();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade700,
        title: Text("Search"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Items"),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color(0xffc2c2c2),
                filled: true,
                hintText: "Search for items in the store",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: widget.search.map((data) {
              return SingleItem(
                isBool: false,
                productImage: data.productImage,
                productName: data.productName,
                productPrice: data.productPrice,
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
