import 'package:dising/src/pages/basico_page.dart';
import 'package:dising/src/pages/botones_page.dart';
import 'package:dising/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.blueGrey
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'botones',
      routes: {
        'basico' : (BuildContext context)  => BasicoPage(),
        'scroll' : (BuildContext context)  => ScrollPage(),
        'botones' : (BuildContext context)  => BotonesPage(),
      },
    );
  }
}
