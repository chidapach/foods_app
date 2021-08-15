import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  Widget singalProducts(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
                height: 230,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.network(
                        'http://pngimg.com/uploads/noodle/noodle_PNG78.png')
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Noodle',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              Text('50\$/1 ',style: TextStyle(color: Colors.grey),),

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
                

      );
  }

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
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
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
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
              ],
            ),
          ), 
        ],),
      ),
    );
  }
}