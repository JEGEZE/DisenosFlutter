import 'package:disenos/pages/basico_page.dart';
import 'package:disenos/pages/botones_page.dart';
import 'package:disenos/pages/scroll_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    /*
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
*/
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: 'botones',
        routes: {
          "basico": (BuildContext context) => Basico(),
          "scroll": (BuildContext context) => ScrollPage(),
          "botones": (BuildContext context) => BotonesPage(),
        });
  }
}
