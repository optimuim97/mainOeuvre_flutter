import 'package:flutter/material.dart';
import 'package:proj/screen.dart';
import 'package:provider/provider.dart';
import './providers/auth.dart';
import './screenss/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/auth.dart';
import './screenss/auth_screen.dart';
import './action_pages/plus_categories/plus_const.dart';
import 'action_pages/construction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
              title: 'Helpers',
              theme: ThemeData(
                primarySwatch: Colors.lime,
                accentColor: Colors.deepOrange,
                fontFamily: 'Lato',
              ),
              //auth.isAuth ? ProductsOverviewScreen() :
              // home:  AuthScreen(),
              // home: MyHomePage(),
              home:MyHomePage(),
              debugShowCheckedModeBanner: false,
    );
  }
}
