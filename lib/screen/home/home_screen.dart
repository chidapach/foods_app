import 'package:flutter/material.dart';
import 'package:foods_app/providers/popular_food_provider.dart';
//import 'package:foods_app/providers/product_provider.dart';
import 'package:foods_app/providers/recommend_food_provider.dart';
import 'package:foods_app/providers/top_food_provider.dart';
// ignore: unused_import
import 'package:foods_app/screen/product_overview/product_overview_screen.dart';
import 'package:foods_app/screen/search/search_screen.dart';
import 'package:foods_app/screen/widgets/drawer_side_widget.dart';
import 'package:foods_app/screen/widgets/single_product_widget.dart';
import 'package:provider/provider.dart';
//import 'package:foods_app/screen/product_overview.dart';
//import 'package:foods_app/screen/singal_product.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //late ProductProvider productProvider;
  late TopfoodProvider topfoodProvider;
  late RecommendfoodProvider recommendfoodProvider;
  late PopularfoodProvider popularfoodProvider;

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }

  @override
  void initState() {
    TopfoodProvider topfoodProvider = Provider.of(context, listen: false);
    topfoodProvider.fatchFoodsproductData();
    RecommendfoodProvider recommendfoodProvider =
        Provider.of(context, listen: false);
    recommendfoodProvider.fatchRecommendProductData();
    PopularfoodProvider popularfoodProvider =
        Provider.of(context, listen: false);
    popularfoodProvider.fatchPopularProductData();
    // ProductProvider productProvider = Provider.of(context,listen: false);
    // productProvider.fatchFoodsproductData();
    // productProvider.fatchRecommendProductData();
    // productProvider.fatchPopularProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    topfoodProvider = Provider.of(context);
    recommendfoodProvider = Provider.of(context);
    popularfoodProvider = Provider.of(context);
    //productProvider = Provider.of(context);
    return Scaffold(
        backgroundColor: Colors.orange.shade50,
        drawer: DrawerSide(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Food",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          actions: [
            CircleAvatar(
                radius: 22,
                backgroundColor: Colors.orange.shade300,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Search(
                          search: [],
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.search,
                    size: 22,
                    color: Colors.white,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.orange.shade300,
                child: Icon(
                  Icons.shopping_basket_rounded,
                  size: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.cyan.shade700,
        ),
        body:
            //  Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            //   child:
            ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://domf5oio6qrcr.cloudfront.net/medialibrary/9921/healthy-foods.jpg'),
                ),
                color: Colors.black,
              ),
              //borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  // Expanded(
                  //   flex: 2,
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 80),
                          //const EdgeInsets.only(right: 130, bottom: 10),
                          child: Container(
                            height: 60,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.cyan.shade900,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      offset: Offset(2, 2))
                                ],
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50))),
                            child: Center(
                              child: Text(
                                'Promotion',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      offset: Offset(6, 5))
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Text(
                            'on all food products',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      offset: Offset(6, 5))
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, right: 10, left: 15, bottom: 5),
              //padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Foods',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Search(
                                    search:
                                        topfoodProvider.getFoodsProductDataList,
                                  )),
                        );
                      },
                      child: Text(
                        'view all',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: topfoodProvider.getFoodsProductDataList.map(
                  (foodsProductData) {
                    return SingelProduct(
                      productImage: foodsProductData.productImage,
                      productName: foodsProductData.productName,
                      productPrice: foodsProductData.productPrice,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductOverview(
                              productName: foodsProductData.productName,
                              productImage: foodsProductData.productImage,
                              productPrice: foodsProductData.productPrice,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, right: 10, left: 15, bottom: 5),
              //padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommend foods',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Search(
                                    search: recommendfoodProvider
                                        .getRecommendProductDataList,
                                  )),
                        );
                      },
                      child: Text(
                        'view all',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: recommendfoodProvider.getRecommendProductDataList.map(
                  (recommendProductData) {
                    return SingelProduct(
                      productImage: recommendProductData.productImage,
                      productName: recommendProductData.productName,
                      productPrice: recommendProductData.productPrice,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductOverview(
                              productName: recommendProductData.productName,
                              productImage: recommendProductData.productImage,
                              productPrice: recommendProductData.productPrice,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, right: 10, left: 15, bottom: 5),
              //padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular foods',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Search(
                                    search: popularfoodProvider
                                        .getPopularProductDataList,
                                  )),
                        );
                      },
                      child: Text(
                        'view all',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: popularfoodProvider.getPopularProductDataList.map(
                  (popularProductData) {
                    return SingelProduct(
                      productImage: popularProductData.productImage,
                      productName: popularProductData.productName,
                      productPrice: popularProductData.productPrice,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductOverview(
                              productName: popularProductData.productName,
                              productImage: popularProductData.productImage,
                              productPrice: popularProductData.productPrice,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ));
    //),
    //);
  }
}
