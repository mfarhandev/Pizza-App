import 'package:flutter/material.dart';
import 'package:food_app/stater_page.dart';
import 'package:food_app/submenu_page.dart';

import 'menu_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaterPage(),
    );
  }
}
