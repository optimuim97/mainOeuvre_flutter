import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './screenss/auth_screen.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  String email = '';
  List ordname = [];
  int counter = 0;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          decoration: BoxDecoration(
        // Box decoration takes a gradient
          gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          // stops: [0.1, 0.4, 0.7, 1.0],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            const Color(0xff0D37C1),
            Colors.grey,
            Colors.grey,
            Colors.blueGrey,
          ],
        ),
      ),
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          
          UserAccountsDrawerHeader(
            accountName: Text('Aboubakr'),
            accountEmail: Text('Sidik@gmail.com'), 
            otherAccountsPictures: <Widget>[    
              IconButton(
                  icon: Icon(
                    Icons.info,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  onPressed: () {
                    //Navigator//
                  })
            ],
            currentAccountPicture: CircleAvatar(
              // backgroundColor: Theme.of(context).accentColor,
              backgroundImage: AssetImage("assets/menuisier.jpg"),
            ),
          ),
          
          ListTile(
              leading: Icon(Icons.face),
              title: Text("Profil"),
              onTap: () {
                //Navigator//
              },
              ),
          ListTile(
            onTap: () {
              //Navigator//
            },
            leading: Icon(Icons.work),
            title: Text("Construction"),
          ),

          ListTile(
              leading: Icon(CupertinoIcons.car_detailed),
              title: Text("Mecanique"),
              onTap: () {
                //Navigator//
              }),
          ListTile(
            onTap: () {
              //Navigator//
            },
            leading: Icon(Icons.phone_android),
            title: Text("Reparation Appariels"),
          ),
          ListTile(
            onTap: versPlusAuth,
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
          ),
        ],
      ),
    ));
  }
   void versPlusAuth(){
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
      return new AuthScreen();
    } ));
  }
}

