import 'package:flutter/material.dart';
import 'package:mindful_mood/homepage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  _buildFormField('First Name'),
                  SizedBox(height: 13),
                  _buildFormField('Last Name'),
                  SizedBox(height: 13),
                  _buildFormField('Age'),
                  SizedBox(height: 13),
                  _buildFormField('Gender'),
                  SizedBox(height: 13),
                  _buildFormField('Email Address'),
                  SizedBox(height: 13),
                  _buildFormField('Phone'),
                  SizedBox(height: 13),
                  _buildFormField('Password', isPassword: true),
                  SizedBox(height: 13),
                  _buildFormField('Confirm Password', isPassword: true),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text('Signup', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
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

  Widget _buildFormField(String label, {bool isPassword = false}) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Color(0xFFAD8CC1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Color(0xFFAD8CC1)), // Change to white when clicked
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Color(0xFFAD8CC1)), // Change to white when clicked
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
