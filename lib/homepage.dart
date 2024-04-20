import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:mindful_mood/journal.dart';
import 'package:mindful_mood/therapy.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<double> moods = [3, 2, 4, 1, 5, 3, 2];
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0xFFAD8CC1),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello Jatin',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'How are you today?',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 10),
                          Expanded(child: _EmotionBox('Unhappy', '😞')),
                          SizedBox(width: 10),
                          Expanded(child: _EmotionBox('Sad', '😢')),
                          SizedBox(width: 10),
                          Expanded(child: _EmotionBox('Normal', '😐')),
                          SizedBox(width: 10),
                          Expanded(child: _EmotionBox('Good', '😊')),
                          SizedBox(width: 10),
                          Expanded(child: _EmotionBox('Happy', '😄')),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              'Continue Test',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle continue test
            },
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _SuggestionCard('Personality Test', Color(0xff6A9BE9), 0.5),
                _SuggestionCard('Suggestion 2', Color(0xffEB6E6E), 0.3),
                _SuggestionCard('Suggestion 3', Color(0xff6DC8BD), 0.8),
                _SuggestionCard('Suggestion 4', Colors.purple, 0.2),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Average Mood',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFFAD8CC1).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 200,
                  padding: EdgeInsets.all(16),
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      maxY: 5,
                      barTouchData: BarTouchData(enabled: false),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                          margin: 20,
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 0:
                                return 'Mon';
                              case 1:
                                return 'Tue';
                              case 2:
                                return 'Wed';
                              case 3:
                                return 'Thu';
                              case 4:
                                return 'Fri';
                              case 5:
                                return 'Sat';
                              case 6:
                                return 'Sun';
                              default:
                                return '';
                            }
                          },
                        ),
                        leftTitles: SideTitles(showTitles: false),
                      ),
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      barGroups: moods
                          .asMap()
                          .map((key, value) => MapEntry(
                          key,
                          BarChartGroupData(
                            x: key,
                            barRods: [
                              BarChartRodData(
                                y: value,
                                colors: [Color(0xFF5E2B7D)],
                                width: 16,
                              ),


                            ],
                          )))
                          .values
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomAppBar(
          color: Color(0xFFAD8CC1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.article_outlined),
                    onPressed: () {
                      // Handle Test icon tap
                    },
                    color: Colors.white,
                  ),
                  Text(
                    'Test',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.people_outline),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TherapyPage()),
                      );
                    },
                    color: Colors.white,
                  ),
                  Text(
                    'Therapist',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      // Handle Home icon tap
                    },
                    color: Colors.white,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.book),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JournalPage()),
                      );
                    },
                    color: Colors.white,
                  ),
                  Text(
                    'Journal',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      // Handle Profile icon tap
                    },
                    color: Colors.white,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmotionBox extends StatelessWidget {
  final String text;
  final String emoji;

  const _EmotionBox(this.text, this.emoji, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            emoji,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class _SuggestionCard extends StatelessWidget {
  final String title;
  final Color color;
  final double progress;

  const _SuggestionCard(this.title, this.color, this.progress, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8),
      color: color,
      elevation: 4, // Add elevation for shadow
      shadowColor: Colors.black.withOpacity(0.9), // Set shadow color
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Container(
          width: 150,
          height: 100,
          padding: EdgeInsets.only(left: 4, right: 4, top: 10, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8),
                  Icon(Icons.person_outline, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 3),
                ],
              ),
              SizedBox(height: 3),
              SizedBox(
                width: 120, // Set the width of the progress indicator
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  minHeight: 6, // Set the height of the progress indicator
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
