import 'package:flutter/material.dart';
import 'package:foods_app/config/color.dart';

class SingleItem extends StatelessWidget {
  bool isBool = false;
  String productImage;
  String productName;
  int productPrice;
  SingleItem({required this.isBool, required this.productImage, required this.productName, required this.productPrice});
  
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
                    mainAxisAlignment: isBool==false ? 
                    MainAxisAlignment.spaceAround
                    : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            productName,
                          style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "$productPrice\$",
                          style: TextStyle(
                            color: Colors.black,
                            
                          ),
                          ),
                        ],
                      ),
                     isBool==false ? Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                            "50 Gram",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                            
                          ),
                          ),
                            ),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: Colors.orange.shade900,
                              ),
                            )
                          ],
                        ),
                      ):Text("50 Gram")
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding: isBool==false? EdgeInsets.symmetric(horizontal: 25,vertical: 12):EdgeInsets.only(left: 15, right: 15),
                  child: EdgeInsets==false? 
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.orange.shade900,
                            size: 20,
                          ),
                           Text(
                            "ADD",
                            style: TextStyle(
                            color: Colors.orange.shade900,
                          ),
                          ),
                        ],
                      ),
                    ),
                  )
                  :Column(
                    children: [
                      Icon(Icons.delete,
                      size: 20,
                      color: Colors.black,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.orange.shade900,
                            size: 14,
                          ),
                           Text(
                            "ADD",
                            style: TextStyle(
                            color: Colors.orange.shade900,
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
              isBool == false ?
              Container()
              : Divider(
                height: 1,
                color: Colors.black45,
              )
            ],
          ),
        ),
        isBool == false ?
          Container()
          : Divider(
            height: 1,
            color: Colors.black45,
          )
      ],
    );
  }
}