

import 'package:flutter/cupertino.dart';

class ContadorProvider extends ChangeNotifier{
 int _contar=0;
 int get contar =>_contar;

 void contando(){

  _contar++;
  notifyListeners();
 }



}