import 'package:flutter/material.dart';
import 'package:foods_app/config/color.dart';

class SingleItem extends StatelessWidget {
  bool isBool = false;
  String productImage;
  String productName;
  int productPrice;
  SingleItem(
      {required this.isBool,
      required this.productImage,
      required this.productName,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  child: Center(
                    child: Image.network(
                      productImage,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: isBool == false
                        ? MainAxisAlignment.spaceAround
                        : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              productName,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "$productPrice\$",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      isBool == false
                          ? Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "1 piece",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.cyan.shade900,
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 20),
                              child: Text("1 piece"),
                            )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding: isBool == false
                      ? EdgeInsets.symmetric(horizontal: 35, vertical: 15)
                      : EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: EdgeInsets == false
                      ? Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.cyan.shade900,
                                  size: 20,
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(
                                    color: Colors.cyan.shade900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            Icon(
                              Icons.delete,
                              size: 22,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.cyan.shade900,
                                      size: 14,
                                    ),
                                    Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Colors.cyan.shade900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                ),
              ),
              isBool == false
                  ? Container()
                  : Divider(
                      height: 1,
                      color: Colors.black45,
                    )
            ],
          ),
        ),
        isBool == false
            ? Container()
            : Divider(
                height: 1,
                color: Colors.black45,
              )
      ],
    );
  }
}
