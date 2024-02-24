import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/sec_start_page.dart';
import 'package:store_app/screens/updata_product_page.dart';

import 'package:store_app/screens/start_page.dart';
void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id:(context) => HomePage(),
        UpdateProductPage.id :(context) => UpdateProductPage() ,
        SrartPage.id:(context) => SrartPage(),
        SecStartPage.id:(context) => SecStartPage()
        
      },
      initialRoute: SrartPage.id,
    );
  }
}
