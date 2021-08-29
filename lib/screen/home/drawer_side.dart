import 'package:flutter/material.dart';
import 'package:foods_app/screen/my_profile/my_profile.dart';
import 'package:foods_app/screen/review_cart/review_cart.dart';

class DrawerSide extends StatelessWidget {
   Widget listTile({required String title,required IconData iconData,required Function onTap}) {
    return Container(
      child: ListTile(
        //onTap: onTap,
        onTap: () => onTap(),
        leading: Icon(
          iconData,
          size: 32,
          color: Colors.white54,
        ),
        title: Text(
        title,
        style: TextStyle(color: Colors.white54),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.orange.shade900,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://mpng.subpng.com/20190123/jtv/kisspng-computer-icons-vector-graphics-person-portable-net-myada-baaranmy-teknik-servis-hizmetleri-5c48d5c2849149.051236271548277186543.jpg"),
                      backgroundColor: Colors.white54,
                      radius: 43,
                      // child: CircleAvatar(
                      //   radius: 40,
                      //   //backgroundColor: Colors.red,
                      // ),
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
              listTile(iconData: Icons.home_outlined,title: "Home",onTap: (){}),
              listTile(iconData: Icons.shop_outlined,title: "Review Cart",onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReviewCart(),),);
              }),
              listTile(iconData: Icons.person_outlined,title: "My Profile",onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfile(),),);
              }),
              // listTile(iconData: Icons.person_outlined,title: "My Profile",
              // onTap: () => {
              //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyProfile(),),)
              // }),
              listTile(iconData: Icons.notifications_outlined,title: "Notification",onTap: (){}),
              listTile(iconData: Icons.star_outlined,title: "Rating & Review",onTap: (){}),
              listTile(iconData: Icons.favorite_outlined,title: "Wishlist",onTap: (){}),
              listTile(iconData: Icons.copy_outlined,title: "Raise a Complaint", onTap: (){}),
              listTile(iconData: Icons.format_quote_outlined,title: "FAQs",onTap: (){}),
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
      );
  }
}