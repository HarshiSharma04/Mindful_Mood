import 'package:flutter/material.dart';
import 'package:mindful_mood/login_page.dart';
import 'package:mindful_mood/signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
                'lib/images/mm_logo.png', // Assuming your logo image is in the assets folder
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
                    'Welcome to',
                    style: TextStyle(
                      fontFamily: 'InriaSerif', // Use the Inria Serif font
                      fontSize: 29,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Mindful Mood!',
                    style: TextStyle(
                      fontFamily: 'InriaSerif', // Use the Inria Serif font
                      fontSize: 29,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Image.network(
                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2020/05/20/11/mental-health-therapy.jpg', // Replace with your image URL
                      height: 400,
                      width: 500,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text('Login', style: TextStyle(fontSize: 23),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color(0xFFAD8CC1),
                      minimumSize: Size(150, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(color: Colors.black), // Add black border
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text('Signup', style: TextStyle(fontSize: 23),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color(0xFFAD8CC1),
                      minimumSize: Size(150, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(color: Colors.black), // Add black border
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
