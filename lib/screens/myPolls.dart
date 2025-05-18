import 'package:flutter/material.dart';
import 'package:app/utils/colors.dart';

void main() {
  runApp(PollApp());
}

class PollApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poll App',
      debugShowCheckedModeBanner: false,
      home: MyPollsScreen(),
    );
  }
}

class MyPollsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> polls = [
    {
      'question': 'What is your favorite sport?',
      'options': {'Cricket': 45, 'Football': 35, 'Rugby': 15, 'Volleyball': 5},
    },
    {
      'question': 'What is your favorite color?',
      'options': {'red': 15, 'blue': 35, 'green': 15, 'yellow': 5},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        elevation: 1,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/logo.png'),
            backgroundColor: mobileBackgroundColor,
          ),
        ),
        title: Text(
          'My Polls',
          style: TextStyle(color: mobileBlueColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: mobileBlueColor),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: polls.length,
        itemBuilder: (context, index) {
          final poll = polls[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Poll No: 00${index + 1}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: secondaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(poll['question']),
                    SizedBox(height: 12),
                    ...poll['options'].entries.map((entry) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(entry.key),
                              Text('${entry.value} %'),
                            ],
                          ),
                          SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: entry.value / 100,
                            minHeight: 6,
                            backgroundColor: secondaryColor,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              mobileBlueColor,
                            ),
                          ),
                          SizedBox(height: 12),
                        ],
                      );
                    }).toList(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'View votes',
                          style: TextStyle(color: mobileBlueColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          // create poll function
        },
        child: Text(
          'Create Poll',
          style: TextStyle(color: mobileBackgroundColor),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: mobileBlueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: secondaryColor,
        unselectedItemColor: mobileBlueColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Create',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),*/
    );
  }
}
