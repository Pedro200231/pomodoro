// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
part 'contador.store.g.dart';

class ContadorStore = _ContadorStore with _$ContadorStore;

abstract class _ContadorStore with Store {
  @observable
  int _contador = 0;

  int get contador => _contador;
  @action
  void incrementar() {
    _contador++;
  }

  void decrementar() {
    _contador--;
  }
}
