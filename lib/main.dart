// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:foods_app/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foods_app/providers/product_provider.dart';
import 'package:foods_app/screen/home/home_screen.dart';
import 'package:provider/provider.dart';
// ignore: unused_import
// import 'package:foods_app/screen/home_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context)=>ProductProvider(),
      child: MaterialApp(
       //home: SignIn(),
        home: HomeScreen(),
      ),
    );
  }
}


