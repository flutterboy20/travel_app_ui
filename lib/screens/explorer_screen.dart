import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExplorerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 28),
              child: Text(
                'Explore\nNew Places',
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
                  'https://assets2.lottiefiles.com/datafiles/HN7OcWNnoqje6iXIiZdWzKxvLIbfeCGTmvXmEm1h/data.json',
                  fit: BoxFit.cover), //Lottie Animation
            ),
          ],
        ),
      ),
    );
  }
}
