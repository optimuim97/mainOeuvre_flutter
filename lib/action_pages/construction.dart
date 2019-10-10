import 'package:flutter/material.dart';
import 'package:proj/action_pages/plus_categories/plus_const.dart';
import '../sidedrawer.dart';

class Construction extends StatefulWidget{
  @override
  _ConstructionState createState() => _ConstructionState();
}

class _ConstructionState extends State<Construction> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                    'CONSTRUCTION',
                    style: TextStyle(
                        fontSize: 20.0,
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
       height: 2000,
       padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 500,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/maçon2.png"),fit: BoxFit.cover)),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Beneficiez de services rapide et de qualités',style: TextStyle(color:Colors.blue,fontSize: 15.0),),                 
                      ], 
                    ),
                    RaisedButton(
                      child: Text('Liste des  Maçons ', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed:versPlusConst,
                      color: Colors.blue,
                      elevation: 15,
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 500,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/menuisier.jpg"),fit: BoxFit.cover)),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Beneficiez de services rapide et de qualités',style: TextStyle(color:Colors.blue,fontSize: 15.0,),),
                      ], 
                    ),
                    RaisedButton(
                      child: Text('Liste des menuisiers ', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){
                        // Navigator.of(context).pushNamed(Page.routeName);
                      },
                      color: Colors.blue,
                      elevation: 15,
                    )
                  ],
                ),
              ),
               Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 500,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/plombier.jpg"),fit: BoxFit.cover)),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: <Widget>[
                        Text('Beneficiez de services rapide et de qualités',style: TextStyle(color:Colors.blue,fontSize: 15.0),),
                        // Icons
                      ], 
                    ),
                    RaisedButton(
                      child: Text('Liste des  Plombiers', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){
                        // Navigator.of(context).pushNamed(Page.routeName);
                      },
                      color: Colors.blue,
                      elevation: 15,
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 500,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/carreleur.png"),fit: BoxFit.cover)),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: <Widget>[
                        Text('Beneficiez de services rapide et de qualités',style: TextStyle(color:Colors.blue,fontSize: 15.0),),
                      ], 
                    ),
                    RaisedButton(
                      child: Text('Liste des carreleurs', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){
                        // Navigator.of(context).pushNamed(Page.routeName);
                      },
                      color: Colors.blue,
                      elevation: 15,
                    )
                  ],
                ),
              ),       
            ],
          ),
        ),
      ),
    );
  }

 void versPlusConst(){
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
      return new PlusConst();
    } ));
  }
}



