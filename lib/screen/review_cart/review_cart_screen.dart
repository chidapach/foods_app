import 'package:flutter/material.dart';
import 'package:foods_app/config/color.dart';
import 'package:foods_app/screen/widgets/single_item_widget.dart';

class ReviewCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text(
          "\$ 170.00",
          style: TextStyle(color: Color(0xFF0097A7)),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xFF0097A7),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {},
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF0097A7),
        title: Text(
          "Review Cart",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SingleItem(
            isBool: true,
            productImage:
                'https://baansomtum.com/wp-content/uploads/somtum-baansomtum-9.png',
            productName: 'Som Tum',
            productPrice: 20,
          ),
          SingleItem(
            isBool: true,
            productImage:
                'https://static.wixstatic.com/media/9b43ab_e9bd1d05f980457087519d357263c60e~mv2.png/v1/fill/w_438,h_378,al_c,q_85,usm_0.66_1.00_0.01/หมู%201.webp',
            productName: 'Grilled Pork',
            productPrice: 30,
          ),

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
