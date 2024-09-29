import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_and_register.dart';
import 'package:food_delivery/models/restaurent.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/welcome_page.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          //theme provider
          ChangeNotifierProvider(create: (context) => ThemProvider()),

          //resturent provider
          ChangeNotifierProvider(create: (context) => Restaurant()),
        ],
      child: const MyApp(),
    ),
  );
}

// 43 min done


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemProvider>(context).themeData,
      home: homePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}