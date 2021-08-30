import 'package:flutter/material.dart';
import 'package:foods_app/config/color.dart';
import 'package:foods_app/screen/widgets/single_item.dart';

class ReviewCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text("\$ 170.00", style: TextStyle(color: Colors.orange.shade900),),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text("Submit"),
            color: Colors.orange.shade900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            onPressed: (){},
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text("Review Cart", 
        style: TextStyle(color: textColor,fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SingleItem(isBool: true, productImage: '', productName: '', productPrice: 20,),
           SingleItem(isBool: true, productImage: '', productName: '', productPrice: 0,),
          
          // SingleItem(),
          // SingleItem(),
          // SingleItem(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}