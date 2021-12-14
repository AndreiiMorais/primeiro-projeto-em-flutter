import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  //change notifier é como se fosse um setstate mas somente para codigos de controle, nao telas.
  static AppController instance = AppController();
  //aqui estou criando uma instance dela mesma para poder ser apenas uma ao chamar nos outros arquivos.
  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    //o ponto ! significa que é o contrario, o chamado "não"
    notifyListeners();
  }
}
