import 'package:flutter/material.dart';
import 'package:mindful_mood/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'lib/images/mm_logo.png', // Replace with your logo image path
                height: 100,
                width: 100,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Email Address',
                    style: TextStyle(
                      color: Color(0xFFAD8CC1), // Use the color #AD8CC1
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Color(0xFFAD8CC1)),
                      filled: true,
                      fillColor: Color(0xFFAD8CC1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFAD8CC1)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFAD8CC1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xFFAD8CC1), // Use the color #AD8CC1
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Color(0xFFAD8CC1)),
                      filled: true,
                      fillColor: Color(0xFFAD8CC1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFAD8CC1)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFAD8CC1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30), // Increase padding here
                      child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color(0xFFAD8CC1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: Colors.black),
                      ),
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
