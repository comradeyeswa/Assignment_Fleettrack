import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final Color backgroundColor = Color(0xFFFB7689); // Matching the background color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context); // Go back to the previous screen
                      },
                    ),
                  ],
                ),
                SizedBox(height:30), // Added SizedBox for spacing
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70), // Adjust the top padding as needed
                    child: Center(
                      child: Image.asset(
                        'assets/images/img2.png',
                        // Adjust the height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // Set the width to match the parent width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: backgroundColor, // Set button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 30, // Adjust padding
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100, // Adjust top position of the container
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Share and Receive',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20), // Added space between "Share and Receive" and the additional text
                  Text(
                    'Always be connected with the loved ones!',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
