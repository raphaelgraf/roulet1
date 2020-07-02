import 'dart:math';
import 'package:scoped_model/scoped_model.dart';

class CookieOfTheDay extends Model {

  final Random rnd = new Random();
  String _actRndValue = '';

  get actualValue => _actRndValue;

  List<String> data;
  
  void add(String value){
    data.add(value);
    print(data);
  }
  void chandeRandomValue(){
    _actRndValue =  data[rnd.nextInt(data.length)];
    notifyListeners();
  }


}





