import 'package:flutter/material.dart';

class CambioProvider extends ChangeNotifier {
  bool dato = false;
  bool dato1 = false;
  bool get iscambio => dato;

  cambiar(bool value){
    dato=value;
    print(value);
    notifyListeners();
  }

  btncambiar(){
    (dato1 == false)?(dato1 = true):(dato1 = false);
    print(dato1);
    notifyListeners();
  }
}