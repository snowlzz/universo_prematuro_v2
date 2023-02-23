// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';


import '../../growth/growth_Page.dart';
import '../../profile/profile_page.dart';
import '../../tasks/tasks_page.dart';
import '../home_page.dart';

import 'nav_store.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  final NavBarStore store = Modular.get();
  // final EditStore eStore = Modular.get();

  @override
  void initState() {
    // eStore.recoverDataFromFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
      return IndexedStack(
        index: store.currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          HomePage(),
          ProfilePage(),
          TasksPage(),
          GrowthPage(),
        ],
      );
    }), bottomNavigationBar: Observer(builder: (_) {
      return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: store.currentIndex,
          onTap: store.changePage,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task_alt),
              label: "Motricidade",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tips_and_updates_rounded),
              label: "Crescimento",
            ),
          ]);
    }));
  }
}
