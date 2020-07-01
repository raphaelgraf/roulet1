import 'package:flutter/material.dart';
import 'package:roulet/rouletBack/addStuff.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roulet',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      home: MyHomePage (title: 'Flutter Demo Home Page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

        new Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(

          border: Border(
            top: BorderSide(width: 8.0, color: Colors.black),
            bottom: BorderSide(width: 8.0, color: Colors.black),
            left: BorderSide(width: 8.0, color: Colors.black),
            right: BorderSide(width: 8.0, color: Colors.black),


          ),
        ),
        child: Text("Variabel"),
      ),

              RaisedButton(
                child: new Text("START"),
                color:  Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: null,
              ),




            new Container(
              child: new Row(

                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(50)),
                    RaisedButton(

                    child: new Text("ADD"),
                    color:  Colors.blueAccent[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddStuff()),
                      );
                    },
                  ),

                    Padding(
                        padding: EdgeInsets.all(50)),


                   RaisedButton(
                    child: new Text("DEL"),
                    color:  Colors.blueAccent[600],
                    onPressed: null,
                  ),


                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
