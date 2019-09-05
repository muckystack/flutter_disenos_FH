import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_disenos_fh/src/pages/basico_page.dart';
import 'package:flutter_disenos_fh/src/pages/botones_page.dart';
import 'package:flutter_disenos_fh/src/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white12
      )
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basico',
      routes: {
        'basico'  : (BuildContext context) => BasicoPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'botones'  : (BuildContext context) => BotonesPage(),
      },
    );
  }
}