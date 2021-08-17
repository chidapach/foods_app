

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:foods_app/screen/product_overview.dart';
//import 'package:foods_app/screen/product_overview.dart';
import 'package:foods_app/screen/singal_product.dart';


class HomeScreen extends StatelessWidget {


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
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,
      //backgroundColor: Color(0XF7D294),
      backgroundColor: Colors.orange.shade100,
      drawer: Drawer(
        child: Container(
          color: Colors.orange.shade900,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Guest"),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          // ignore: deprecated_member_use
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text("Login"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                width: 2
                              )
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                
              ),
              listTile(icon: Icons.home_outlined,title: "Home"),
              listTile(icon: Icons.shop_outlined,title: "Review Cart"),
              listTile(icon: Icons.person_outlined,title: "My Profile"),
              listTile(icon: Icons.notifications_outlined,title: "Notification"),
              listTile(icon: Icons.star_outlined,title: "Rating & Review"),
              listTile(icon: Icons.favorite_outlined,title: "Wishlist"),
              listTile(icon: Icons.copy_outlined,title: "Raise a Complaint"),
              listTile(icon: Icons.format_quote_outlined,title: "FAQs"),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Support",style: TextStyle(color: Colors.white54),),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text("Call us:",style: TextStyle(color: Colors.white54),),
                        Text("+077286602",style: TextStyle(color: Colors.white54),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                        children: [
                          Text("Mail us:",style: TextStyle(color: Colors.white54),),
                          SizedBox(
                            width: 10,
                          ),
                          Text("+077286602",style: TextStyle(color: Colors.white54),),
                        ],
                    ),
                     ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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
            child: Icon(Icons.search, size: 17,color: Colors.black,),
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
                            color: Colors.orange.shade100,
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
                Text('Top foods'),
                Text('view all', style: TextStyle(color: Colors.grey),)
              ],
            ),
        ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              
              children: [
                
                SingalProduct(
                  productImage: 'http://pngimg.com/uploads/noodle/noodle_PNG78.png',
                  productName: 'Noodle',
                 onTap: () {
                   
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                        productImage: 'http://pngimg.com/uploads/noodle/noodle_PNG78.png',
                        productName: 'Noodle',
                      ),
                    ),
                   );
                },
                 
                  ),
                SingalProduct(productImage: 'http://pngimg.com/uploads/noodle/noodle_PNG66.png',
                productName: 'Spagetti',
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'http://pngimg.com/uploads/noodle/noodle_PNG66.png',
                        productName: 'Spagetti',
                        ),
                    ),
                   )
                },),
                SingalProduct(productImage: 'https://www.pngkey.com/png/full/11-115437_free-png-fried-chicken-png-images-transparent-fried.png',
                productName: 'Fire Chicken', 
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'https://www.pngkey.com/png/full/11-115437_free-png-fried-chicken-png-images-transparent-fried.png',
                        productName: 'Fire Chicken',
                        ),
                    ),
                   );
                },),
                SingalProduct(productImage: 'https://huasenghong.co.th/wp-content/uploads/2018/02/WM-ข้าวผัดกุ้ง.png',
                productName: 'Fire Rice', 
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'https://lh3.googleusercontent.com/proxy/629tzGlO_w4l9nB2NTZXCcCfzaHHooHsdB5YukMr-j8yW_UwmWFbWg9T7KaUPKvCW9jPElEzDHZbOjrfQ4p3ZLQEWWGLgh0DS1-NPICAY3Oicgo',
                        productName: 'Fire Rice',
                        ),
                    ),
                   );
                },),
                SingalProduct(productImage: 'https://www.rosdee.co.th/wp-content/uploads/2017/09/Tom-Yum-Creamy-ต้มยำกุ้งน้ำข้น.png',
                productName: 'Tom Yum Kung', 
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'https://www.rosdee.co.th/wp-content/uploads/2017/09/Tom-Yum-Creamy-ต้มยำกุ้งน้ำข้น.png',
                        productName: 'Tom Yum Kung',
                        ),
                    ),
                   );
                },)
                
               
              ],
            ),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recommend foods'),
                Text('view all', style: TextStyle(color: Colors.grey),)
              ],
            ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               SingalProduct(productImage: 'https://www.pngarts.com/files/2/Salad-PNG-Image.png',
               productName: 'Salad', 
               onTap: (){
                 Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'https://www.pngarts.com/files/2/Salad-PNG-Image.png',
                        productName: 'Salad',
                        ),
                    ),
                   );
               },),
               SingalProduct(productImage: 'https://beyondthefitthailandblog.files.wordpress.com/2017/06/burger-png-file.png?w=810',
               productName: 'Burger', 
               onTap: (){
                 Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'https://beyondthefitthailandblog.files.wordpress.com/2017/06/burger-png-file.png?w=810',
                        productName: 'Burger',
                        ),
                    ),
                   );
               },),
               SingalProduct(productImage: 'http://pngimg.com/uploads/hot_dog/hot_dog_PNG10217.png',
               productName: 'Hotdog', 
               onTap: (){
                 Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'http://pngimg.com/uploads/hot_dog/hot_dog_PNG10217.png',
                        productName: 'Hotdog',
                        ),
                    ),
                   );
               },),
               SingalProduct(productImage: 'https://www.nicepng.com/png/full/68-689198_pizza-download-png-image-meat-pizza-png.png',
               productName: 'Pizza', 
               onTap: (){
                 Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: 'https://www.nicepng.com/png/full/68-689198_pizza-download-png-image-meat-pizza-png.png',
                        productName: 'Pizza',
                        ),
                    ),
                   );
               },),
              ],
            ),
          ), 
        ],),
      ),
    );
  }
}