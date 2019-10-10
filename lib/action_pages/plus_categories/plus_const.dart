import 'package:flutter/material.dart';
import '../../sidedrawer.dart';

class PlusConst extends StatefulWidget{
  @override
  _PlusConstState createState() => _PlusConstState();

}

class _PlusConstState extends State<PlusConst> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideDrawer(),
      appBar: PreferredSize(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: ButtonTheme.bar(
            child: ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                  },
                  child: Icon(
                    Icons.list,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  elevation: 0,
                  color: Colors.transparent,
                ),
                Text(
                  'Contacts',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  textAlign:TextAlign.center,
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: Colors.white,
                ),
              ),
              gradient: LinearGradient(
                  colors: [Colors.lime,Color.fromARGB(1, 200, 208, 151)]),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue[500],
                  blurRadius: 3.0,
                  spreadRadius: 1.0,
                )
              ]),
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child : ListView(
            children: <Widget>[
              Center(
                child: 
              Text("Abidjan",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
              ,),   
              Card (
                child:ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil.jpg"),fit: BoxFit.cover)),

                ),
                title: Text('Mr Ouattara Latif'),
                subtitle: Text('Maçon'),
                trailing: Icon(Icons.call),
              )) ,
              Card(
                child:ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil.jpeg"),fit: BoxFit.cover)),
                ),
                title: Text('Mr Kone Alban'),
                subtitle: Text('Maçon expert en Batimen'),
                trailing: Icon(Icons.call),
              )),
              Card(
              child: ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil4.jpg"),fit: BoxFit.cover)),
                ),
                title: Text('Mr Kohao Jean'),
                subtitle: Text('Maçon professionel'),
                trailing: Icon(Icons.call),
              )),
              Card(
              child: ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil3.jpg"),fit: BoxFit.cover)),
                ),
                title: Text('Mr Zelda lalo'),
                subtitle: Text('Maçon professionel depuis 15 ans'),
                trailing: Icon(Icons.call),
              )),
               Center(
                child: 
              Text("Kong",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
              ,), 
              Card (
                child:ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil.jpg"),fit: BoxFit.cover)),

                ),
                title: Text('Mr Ouattara Latif'),
                subtitle: Text('Maçon'),
                trailing: Icon(Icons.call),
              )) ,
              Card(
                child:ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil.jpeg"),fit: BoxFit.cover)),
                ),
                title: Text('Mr Kone Alban'),
                subtitle: Text('Maçon expert en Batimen'),
                trailing: Icon(Icons.call),
              )),
              Card(
              child: ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil4.jpg"),fit: BoxFit.cover)),
                ),
                title: Text('Mr Kohao Jean'),
                subtitle: Text('Maçon professionel'),
                trailing: Icon(Icons.call),
              )),
              Card(
              child: ListTile(
                leading: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profil3.jpg"),fit: BoxFit.cover)),
                ),
                title: Text('Mr Zelda lalo'),
                subtitle: Text('Maçon professionel depuis 15 ans'),
                trailing: Icon(Icons.call),
              )),
            ],
          ), 
      ),    
    );
  }
}
