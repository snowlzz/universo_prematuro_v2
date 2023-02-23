// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
part 'nav_store.g.dart';

class NavBarStore = _NavBarStoreBase with _$NavBarStore;

abstract class _NavBarStoreBase with Store {
  @observable
  int currentIndex = 0;

  @observable
  late int index;

  @action
  void changePage(int index) {
    currentIndex = index;
  }
}
