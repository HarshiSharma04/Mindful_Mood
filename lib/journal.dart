import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  List<String> entries = [];
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://mentaltreat.com/about-mental-treat/Group-710.png',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Journal',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF3E9F8),
                hintText: 'Enter your note here...',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              setState(() {
                entries.add(_textEditingController.text);
                _textEditingController.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF9D75DD), // Use the color 9D75DD
            ),
            child: Text('Save'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(entries[index]),
                  onDismissed: (direction) {
                    setState(() {
                      entries.removeAt(index);
                    });
                  },
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFCDB4DB), Color(0xFFCDF0EA)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                  child: ListTile(
                    title: Text(
                      entries[index],
                      style: TextStyle(color: Color(0xFFAD8CC1)), // Use the color AD8CC1
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
