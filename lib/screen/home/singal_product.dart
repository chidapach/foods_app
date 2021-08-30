import 'package:flutter/material.dart';
// ignore: unused_import
//import 'package:foods_app/screen/home_screen.dart';
// ignore: unused_import
import 'package:foods_app/screen/product_overview/product_overview.dart';

class SingalProduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final int productPrice;
  final Function onTap;

  SingalProduct({required this.productImage, required this.productName,required this.productPrice,
  required this.onTap
   });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
                    height: 230,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        GestureDetector(
                         //onTap: onTap(),
                          onTap: () => onTap(),
                          child: Container(
                            height: 150,
                            padding: EdgeInsets.all(5),
                            width: double.infinity,
                             child: Image.network(
                               productImage
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(productName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  Text('$productPrice\$/1 piece ',style: TextStyle(color: Colors.grey),),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: 30,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            
                                            border: Border.all(
                                            ),
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(child: Text('1 piece',
                                              style: TextStyle(fontSize: 10),),
                                              ),
                                              Center(
                                          child: Icon(
                                          Icons.arrow_drop_down,
                                            size: 20,
                                        color: Colors.orange,),
                                      ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 30,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.remove, size: 15,color: Colors.orange,),
                                              Text('1',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                                              Icon(Icons.add, size: 15,color: Colors.orange,)
                                            ],
                                          ),
                                        ),
                                      ),
                                      
                                    ],
                                  )
                                  
                              ],),
                            ),
                          ),
                      ],
                    ),
                    

          ),
      ],
    ));
  }
}