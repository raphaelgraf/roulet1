import 'package:flutter/material.dart';
import 'package:roulet/rouletBack/addStuff.dart';
import 'package:shake/shake.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:roulet/model/cookieRepo.dart';
import 'package:vibration/vibration.dart';

void main() {
  runApp(MyApp());
}
 CookieOfTheDay model = new CookieOfTheDay();
class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CookieOfTheDay>(
        model: CookieOfTheDay(),
        child: MaterialApp(
          title: 'Roulet',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Zufallsgenerator', ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  String loes;

 // ignore: must_call_super
 void initState(){
  ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        print("testing testing;;");
        Vibration.vibrate(duration: 1000);
        model.chandeRandomValue();
      });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ScopedModelDescendant<CookieOfTheDay>(
        builder: (context, child, CookieOfTheDay model) => Center(
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
                child: Text('${model.actualValue}'),
              ),
              RaisedButton(
                child: new Text("START"),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () { model.chandeRandomValue(); },

              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(50)),
                    RaisedButton(
                      child: Icon(Icons.add),
                      color: Colors.blueAccent[600],

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp2()),
                        );
                      },
                    ),
                    Padding(padding: EdgeInsets.all(50)),
                    RaisedButton(
                      child: new Text("DEL"),
                      color: Colors.blueAccent[600],
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      )
    );
  }
}
