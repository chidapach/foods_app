import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
//import 'package:foods_app/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foods_app/providers/popular_food_provider.dart';
// import 'package:foods_app/providers/product_provider.dart';
import 'package:foods_app/providers/recommend_food_provider.dart';
import 'package:foods_app/providers/top_food_provider.dart';
//import 'package:foods_app/screen/auth/sign_in.dart';
import 'package:foods_app/screen/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<TopfoodProvider>(
            create: (context) => TopfoodProvider(),
          ),
          ChangeNotifierProvider<RecommendfoodProvider>(
            create: (context) => RecommendfoodProvider(),
          ),
          ChangeNotifierProvider<PopularfoodProvider>(
            create: (context) => PopularfoodProvider(),
          ),
          //Provider(builder: (context) => TopfoodProvider(), create: (context) => TopfoodProvider(),),
        ],
        child: HomeScreen(),
      ),
    );
  }

// MultiProvider(
  //   providers: [
  //     Provider(builder: (context) => TopfoodProvider(), create: (BuildContext context) => RecommendfoodProvider,),
  //     // Provider<TopfoodProvider>(create: (context) => TopfoodProvider()),
  //     // Provider<RecommendfoodProvider>(
  //     //     create: (context) => RecommendfoodProvider()),
  //   ],
  //   ChangeNotifierProvider<TopfoodProvider>(
  // create: (context) => TopfoodProvider(),
  // ChangeNotifierProvider<ProductProvider>(
  //create: (context) => ProductProvider(),
  // child: MaterialApp(
  // home: SignIn(),
}
