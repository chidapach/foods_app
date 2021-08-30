

import 'package:flutter/material.dart';
import 'package:foods_app/providers/product_provider.dart';
import 'package:foods_app/screen/home/drawer_side.dart';
import 'package:foods_app/screen/home/singal_product.dart';
// ignore: unused_import
import 'package:foods_app/screen/product_overview/product_overview.dart';
import 'package:foods_app/screen/search/search.dart';
import 'package:provider/provider.dart';
//import 'package:foods_app/screen/product_overview.dart';
//import 'package:foods_app/screen/singal_product.dart';


class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductProvider productProvider;

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: Colors.white54,
      ),
      title: Text(
      title,
      style: TextStyle(color: Colors.white54),),
    );
  }

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context,listen: false);
    productProvider.fatchFoodsproductData();
    productProvider.fatchRecommendProductData();
    productProvider.fatchPopularProductData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      drawer: DrawerSide(),
      appBar: AppBar(
        
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Food",style: TextStyle(
          color: Colors.black,
          fontSize: 17
        ),),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.orange.shade300,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(search: [],),),);
              },
              icon: Icon(
              Icons.search, size: 17,color: Colors.black,),)
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.orange.shade300,
              child: Icon(Icons.shop, size: 17,color: Colors.black,),
            ),
          ),
        ],
        backgroundColor: Colors.orange.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://domf5oio6qrcr.cloudfront.net/medialibrary/9921/healthy-foods.jpg'
                  ),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade800,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50)
                                )),
                                child: Center(
                                  child: Text(
                                    'Foody',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.red,
                                          blurRadius: 10,
                                          offset: Offset(3,3)
                                        )
                                      ]
                                    ),
                                  ),
                                ),
                            ),
                          ),
                          Text(
                            '30% Off',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.orange.shade50,
                            fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all food products',
                            style: TextStyle(
                              color: Colors.white,
                             ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                    ),
                  ),
                ],
              ),
            ),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top foods',style: TextStyle(fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(
                      search: productProvider.getFoodsProductDataList,
                    )),);
                  },
                  child: Text('view all', style: TextStyle(color: Colors.black45),))
              ],
            ),
        ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            child: Row(
              children: productProvider.getFoodsProductDataList.map(
                (foodsProductData) {
                return SingalProduct(
                  productImage: foodsProductData.productImage,
                  productName: foodsProductData.productName,
                  productPrice: foodsProductData.productPrice,
                 onTap: () {                
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName:foodsProductData.productName,
                          productImage: foodsProductData.productImage,
                          productPrice: foodsProductData.productPrice,        
                      ),
                    ),
                   );
                  },
                );
              },
              )
              .toList(),
            ),
          ),

          Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recommend foods', style: TextStyle(fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(
                      search: productProvider.getRecommendProductDataList,
                    )),);
                  },
                  child: Text('view all', style: TextStyle(color: Colors.black45),))
              ],
            ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: productProvider.getRecommendProductDataList.map(
                (recommendProductData) {
                return SingalProduct(
                  productImage: recommendProductData.productImage,
                  productName: recommendProductData.productName,
                  productPrice: recommendProductData.productPrice,
                 onTap: () {                
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName:recommendProductData.productName,
                          productImage: recommendProductData.productImage,
                          productPrice: recommendProductData.productPrice,        
                      ),
                    ),
                   );
                  },
                );
              },
              )
              .toList(),
            ),
          ), 
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular foods',style: TextStyle(fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(
                      search: productProvider.getPopularProductDataList,
                    )),);
                  },
                  child: Text('view all', style: TextStyle(color: Colors.black45),))
              ],
            ),
        ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            child: Row(
              children: productProvider.getPopularProductDataList.map(
                (popularProductData) {
                return SingalProduct(
                  productImage: popularProductData.productImage,
                  productName: popularProductData.productName,
                  productPrice: popularProductData.productPrice,
                 onTap: () {                
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName:popularProductData.productName,
                          productImage: popularProductData.productImage,
                          productPrice: popularProductData.productPrice,        
                      ),
                    ),
                   );
                  },
                );
              },
              )
              .toList(),
            ),
          ),
        ],),
      ),
    );
  }
}