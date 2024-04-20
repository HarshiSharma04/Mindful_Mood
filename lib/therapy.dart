import 'package:flutter/material.dart';

class TherapyPage extends StatelessWidget {
  const TherapyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: [
          // Network Image
          Image.network(
            'https://www.stylist.co.uk/images/app/uploads/2022/03/23115419/how-to-sleep-and-stress-1680x1120.jpg?w=1200&h=1&fit=max&auto=format%2Ccompress',
            width: 250,
            height: 180,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 15),
          // Text 'Journal'
          Center(
            child: Text(
              'Therapists',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20),
          // Buttons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _RoundedButton(
                label: 'Schedule',
                emoji: '📅',

              ),
              _RoundedButton(
                label: 'Search',
                emoji: '🔍',
              ),
            ],
          ),
          SizedBox(height: 20),
          // Text 'Quick match'
          Center(
            child: Text(
              'Quick match',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          // Cards for therapists
          _TherapistCard(
            image: 'https://th.bing.com/th/id/OIP.zozvUUvD02QucYPrUlSnlgHaJP?w=141&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            name: 'Dr. John Doe',
            degree: 'MD',
            speciality: 'Psychiatrist',
          ),
          _TherapistCard(
            image: 'https://images.pexels.com/photos/8941916/pexels-photo-8941916.jpeg?auto=compress&cs=tinysrgb&w=600',
            name: 'Dr. Jane Smith',
            degree: 'PhD',
            speciality: 'Psychologist',
          ),
          SizedBox(height: 20),
          // Text 'Great match therapists'
          Center(
            child: Text(
              'Great match therapists',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          // Cards for MindFull Mood
          _TherapistCard(
            image: 'https://th.bing.com/th/id/OIP.WPYPa4GubQVLa0kQqXcfvwHaHa?w=220&h=220&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            name: 'Dr. Michael Brown',
            degree: 'MD',
            speciality: 'Psychiatrist',
          ),
          _TherapistCard(
            image: 'https://th.bing.com/th/id/OIP.8q-eLCxAcbTn2m0tlrZbXAHaHa?w=159&h=196&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            name: 'Dr. Sarah Johnson',
            degree: 'PhD',
            speciality: 'Therapist',
          ),
        ],
      ),
    );
  }
}

class _RoundedButton extends StatelessWidget {
  final String label;
  final String emoji;

  const _RoundedButton({required this.label, required this.emoji, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Color(0xFF9772D3),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          SizedBox(width: 5),
          Text(emoji),
        ],
      ),
    );

  }
}

class _TherapistCard extends StatelessWidget {
  final String image;
  final String name;
  final String degree;
  final String speciality;

  const _TherapistCard({required this.image, required this.name, required this.degree, required this.speciality, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Set the border radius
        ),
        child: ListTile(
          tileColor: Color(0xFFFCC5D9),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
          title: Text(name),
          subtitle: Text('$degree, $speciality'),
          onTap: () {
            // Handle tap on therapist card
          },
        ),
      ),
    );

  }

}


