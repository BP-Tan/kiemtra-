import 'package:flutter/material.dart';
import 'package:flutter_application_1/product_provider.dart';
import 'package:flutter_application_1/productlist_page.dart';
import 'package:flutter_application_1/product_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
    child: MaterialApp(
      home: ProductListPage(),
    ),
  ));
}
