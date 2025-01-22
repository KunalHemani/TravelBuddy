import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mcaflex/screens/home_screen.dart';
import 'package:mcaflex/screens/order.dart';
import 'package:mcaflex/screens/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  late List<Widget> pages;

  late HomePages homePage;
  late OrderPage orderPage;
  late ProfilePage profilePage;
  int currentTabIndex = 0;

  @override
  void initState() {
    homePage = HomePages();
    orderPage = OrderPage();
    profilePage = ProfilePage();

    pages = [homePage, orderPage, profilePage];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
          backgroundColor: Color(0xfff2f2f2),
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outlined,
              color: Colors.white,
            ),
          ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
