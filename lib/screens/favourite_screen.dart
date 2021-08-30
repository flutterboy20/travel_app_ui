import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 28, top: 50),
        height: 400,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 28),
              child: Text(
                'Save your\nFavourite Places',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Lottie.network(
                  'https://assets6.lottiefiles.com/private_files/lf30_DXPazq.json',
                  fit: BoxFit.cover), //Lottie Animation
            ),
          ],
        ),
      ),
    );
  }
}
