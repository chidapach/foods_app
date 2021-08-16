import 'package:flutter/material.dart';
import 'package:foods_app/config/color.dart';

enum SinginCharacter { fill, outline }

class ProductOverview extends StatefulWidget {

  final String productName;
  final String productImage;
  ProductOverview({required this.productImage,required this.productName});

  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SinginCharacter _character = SinginCharacter.fill;

  Widget bottonNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottonNavigatorBar(
              iconColor: Colors.grey,
              backgroundColor: textColor,
              color: Colors.black45,
              title: "Add to WishList",
              iconData: Icons.favorite_outline),
          bottonNavigatorBar(
              iconColor: Colors.white54,
              backgroundColor: Colors.orange.shade900,
              color: Colors.white70,
              title: "Go to cart",
              iconData: Icons.shop_outlined),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        backgroundColor: Colors.orange.shade900,
        title: Text(
          "Product Overview",
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(widget.productName),
                      subtitle: Text("\$50"),
                    ),
                    Container(
                      height: 250,
                      padding: EdgeInsets.all(40),
                      child: Image.network(
                        widget.productImage,
                      ),
                          //"http://pngimg.com/uploads/noodle/noodle_PNG78.png"),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Text(
                        "Avaiable Options",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green[700],
                              ),
                              Radio(
                                value: SinginCharacter.fill,
                                groupValue: _character,
                                activeColor: Colors.green[700],
                                onChanged: (value) {
                                  setState(() {
                                   // _character = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Text("\$50"),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey
                              ),
                                borderRadius: BorderRadius.circular(30)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.black45,
                                    ),
                                    Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Colors.red
                                      ),
                                    )
                                  ],
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          SingleChildScrollView(
            child: Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About is Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "A product is the item offered for sale. A product can be a service or an item. It can be physical or in virtual or cyber form. Every product is made at a cost and each is sold at a price. ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    ),
                ],),
              )
            ),
          ),
        ],
      ),
    );
  }
}
