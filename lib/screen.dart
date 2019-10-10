import 'package:flutter/material.dart';
import './sidedrawer.dart';
import './models/classes.dart';
import 'action_pages/construction.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _counter = 3;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: SideDrawer(),
        appBar: 
        PreferredSize(
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
                    'Home',
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
        body: 
        Container(
          // Add box decoration
          decoration: BoxDecoration(
            color: Color.fromARGB(1, 155, 155, 14),
          ),
          child: 
          Center(
            child: GridView.count(crossAxisCount: 2, children: <Widget>[
              Center(child: Text("Differentes", style: TextStyle(fontSize: 34.0,fontWeight: FontWeight.bold),),),
              Center(child: Text("Categories", style: TextStyle(fontSize: 34.0,fontWeight: FontWeight.bold),),),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:versConst,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.group_work,
                                size: 80.0,
                              ),
                              Text("Construction")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    // onTap: versMeca,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.local_car_wash,
                                size: 60.0,
                              ),
                              Text("Mecanique")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.phone_android,
                                size: 60.0,
                              ),
                              Text('Reparation Appariel')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.add_box,
                                size: 60.0,
                              ),
                              Text("Services Menagers")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
  // function to change page
  void versConst(){
    Navigator.push(context, new 
    MaterialPageRoute(builder: (
      BuildContext context) {
      return new Construction();
    } ));
  }

  // void versMeca(){
  //   Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
  //     return new Mecanique();
  //   } ));
  // }
}