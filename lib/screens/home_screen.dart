import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //build Methods
    _buildCategories(String imgUrl, String title) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              offset: Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).cardColor,
                        offset: Offset(0, 3),
                        spreadRadius: 1,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(title, style: Theme.of(context).textTheme.headline3),
            ],
          ),
        ),
      );
    }

    _buildTopTrips(String imgUrl, String price, String title, String subtitle) {
      return Container(
        height: 200,
        width: 155,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          //add drop shadow
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor, //color of shadow
              spreadRadius: 2,
              offset: Offset(0, 3),
              blurRadius: 10,
            ),
            //you can set more BoxShadow() here
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 12, right: 12, top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 140,
                    width: double.infinity,
                    child: ClipRRect(
                      //add drop shadow
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(imgUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 25,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(price,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    left: 90,
                    top: 10,
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        SizedBox(width: 5),
                        Text(
                          subtitle,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            //add drop shadow
                            color: Colors.white,
                            shape: BoxShape.circle),
                        child: Icon(Icons.favorite_outline_rounded,
                            color: Colors.red, size: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).appBarTheme.color,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10, top: 7, bottom: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.asset('assets/images/Asian Male.png',
                  fit: BoxFit.cover, height: 14, width: 14),
            ),
          ),
          title: Text(
            'Hi, Elon!',
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Icon(
                Icons.notifications_active_rounded,
                color: Colors.orangeAccent.shade700,
                size: 28,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 22, left: 28),
                child: Text(
                  'Where do\nyou want to go?',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32, left: 28, right: 28),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.orangeAccent.shade700, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.orangeAccent.shade700, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: Icon(Icons.search_rounded,
                        size: 22, color: Theme.of(context).primaryColor),
                    hintText: 'Search for places..',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 28, top: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                height: 90,
                margin: EdgeInsets.only(
                  left: 22,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategories('assets/images/camp.jpg', 'Camp'),
                      _buildCategories(
                          'assets/images/mountain.jpg', 'Mountain'),
                      _buildCategories('assets/images/beach.jpg', 'Beaches'),
                      _buildCategories(
                          'assets/images/roadtrip.jpg', 'Road Trip'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 28, top: 20, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Top trips',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            color: Colors.orangeAccent.shade700, size: 18),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Explore',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.orangeAccent.shade700, size: 12),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 28, right: 28, top: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10),
                        _buildTopTrips('assets/images/Leh Ladahk.jpg', '\$158',
                            'Leh Ladahk', 'Roadtrip'),
                        SizedBox(width: 30),
                        _buildTopTrips('assets/images/Everest.jpg', '\$178',
                            'Everest ', 'Mountain'),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10),
                        _buildTopTrips('assets/images/Maldives.jpg', '\$229',
                            'Maldives', 'Island'),
                        SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, DetailScreen.routName);
                          },
                          child: _buildTopTrips('assets/images/Dubai.jpg',
                              '\$249', 'Dubai', 'City'),
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
