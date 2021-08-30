import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:travel_app_ui/screens/explorer_screen.dart';
import 'package:travel_app_ui/screens/favourite_screen.dart';
import 'package:travel_app_ui/screens/home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  static const routeName = 'bottom-navigation-bar-screen';
  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _currentIndex = 0;
  List page = [
    HomeScreen(),
    ExplorerScreen(),
    FavouriteScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            page[_currentIndex],
            Positioned(
              top: MediaQuery.of(context).size.height * 0.85,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 65,
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BottomNavyBar(
                      curve: Curves.easeIn,
                      selectedIndex: _currentIndex,
                      onItemSelected: (index) {
                        setState(() => _currentIndex = index);
                      },
                      backgroundColor: Colors.black,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      items: [
                        BottomNavyBarItem(
                          title: Text('Home'),
                          icon: Icon(
                            Icons.home_filled,
                            color: Colors.white,
                            size: 25,
                          ),
                          activeColor: Colors.white,
                          inactiveColor: Colors.white,
                        ),
                        BottomNavyBarItem(
                          title: Text('Explore'),
                          icon: Icon(
                            Icons.explore_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                          activeColor: Colors.white,
                          inactiveColor: Colors.white,
                        ),
                        BottomNavyBarItem(
                          title: Text('Search'),
                          icon: Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          activeColor: Colors.white,
                          inactiveColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
