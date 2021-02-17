import 'package:ecotravels/view/general/NavigationDrawer.dart';
import 'package:ecotravels/helper/PlaceholderWidget.dart';
import 'package:ecotravels/view/modules/CruiseDeals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../modules/Home.dart';

class ContainerView extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ContainerView> {
   int selectedIndex = 0;
   void onItemTapped(int index) {
     setState(() {
       selectedIndex = index;
     });

  }

   void onNavDawClicked(){
     setState(() {

     });
   }
  final List<Widget> _children = [
    Home(),
    CruiseDeals(),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined),
              label: 'Cruise Deals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              label: 'Articles',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              label: 'Notification',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.black,
          onTap: onItemTapped,
        ),
      body: _children[selectedIndex],
    );
  }



}