import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Food",style: TextStyle(
          color: Colors.black,
          fontSize: 17
        ),),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0Xffd4d181),
            child: Icon(Icons.search, size: 17,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0Xffd4d181),
              child: Icon(Icons.shop, size: 17,color: Colors.black,),
            ),
          ),
        ],
        backgroundColor: Color(0Xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
              ),
              
            )
        ],),
      ),
    );
  }
}