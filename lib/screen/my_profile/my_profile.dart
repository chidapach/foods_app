import 'package:flutter/material.dart';
import 'package:foods_app/config/color.dart';
import 'package:foods_app/screen/home/drawer_side.dart';

class MyProfile extends StatelessWidget {

  @override
  Widget listTile({required IconData icon,required String title}){
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade900,
      //backgroundColor: primaryColor,
      appBar: AppBar(
      backgroundColor: Colors.orange.shade900,
       elevation: 0.0,
       title: Text(
         "My Profile",
         style: TextStyle(
           fontSize: 18,
           color: textColor
         ),
       ),
      ),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.orange.shade900,
                //color: Colors.orange.shade50,
              ),
              Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  //color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chidapa Ch",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                    ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "fonfon.chidapa@gmail.com"
                                )
                            ],),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.orange.shade900,
                              
                              child: CircleAvatar(
                                radius: 12,
                                
                                child: Icon(Icons.edit,color: Colors.orange.shade900,
                                ),
                                backgroundColor: Colors.orange.shade50,
                              ),
                            )
                          ],
                        ),
                        )
                      ],
                    ),
                    listTile(icon: Icons.shop_outlined, title: "My Orders"),
                    listTile(icon: Icons.location_on_outlined, title: "My Delivery Address"),
                    listTile(icon: Icons.person_outline, title: "Refer A Friends"),
                    listTile(icon: Icons.file_copy_outlined, title: "Terms & Conditions"),
                    listTile(icon: Icons.policy_outlined, title: "Privacy Policy"),
                    listTile(icon: Icons.add_chart_outlined, title: "About"),
                    listTile(icon: Icons.exit_to_app_outlined, title: "Log Out"),

                ],),
              ),
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orange.shade900,
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://mpng.subpng.com/20190123/jtv/kisspng-computer-icons-vector-graphics-person-portable-net-myada-baaranmy-teknik-servis-hizmetleri-5c48d5c2849149.051236271548277186543.jpg"),
                radius: 45,
                backgroundColor: scaffoldBackgroundColor,
              ),
            ),
          ),
      ],
      ),
    );
  }
}