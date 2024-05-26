import 'package:flutter/material.dart';
import 'NextPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up UI',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final Color backgroundColor = Color(0xFFFB7689); // New background color
  final Color buttonColor = Color(0xFFFB7689); // New button color
  final Color iconColor = Color(0xFFFB7689); // New icon color
  final Color textFieldColor = Color(0xFFFEF3F1); // New color for text fields

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/img.png', // Adjust the path to your image
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 400, // Adjust the top position of the form
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft, // Align "Sign Up" text to the left
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            style: TextStyle(color: Color(0xFFFB7689)), // Set initial value color
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: iconColor), // Update icon color
                              // Remove border
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: textFieldColor, // Set fill color
                              filled: true, // Fill the background
                              contentPadding: EdgeInsets.symmetric(vertical: 25), // Increase vertical padding
                            ),
                            initialValue: 'tz.sadeghi@outlook.com',
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      // Add space of 1.5 times the default height
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            style: TextStyle(color: Color(0xFFFB7689)), // Set initial value color
                            obscureText: true, // Display asterisks instead of actual text
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: iconColor), // Update icon color
                              // Remove border
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: textFieldColor, // Set fill color
                              filled: true, // Fill the background
                              contentPadding: EdgeInsets.symmetric(vertical:25), // Increase vertical padding
                            ),
                            initialValue: '********',
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity, // Set the width to match the parent width
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor, // Set button color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 22, // Adjust padding
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NextPage()), // Navigate to NextPage
                            );
                            // Handle sign-up action
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 25, // Increase font size
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Already a member?',
                            style: TextStyle(
                              fontSize: 20, // Adjust font size
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 2),
                          TextButton(
                            onPressed: () {
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
