import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image.asset('assets/logo.png'),
        ),
        title: Text(
          'Create',
          style: TextStyle(fontWeight: FontWeight.bold, color: mobileBlueColor),
        ),
        centerTitle: true,
        backgroundColor: mobileBackgroundColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu, color: mobileBlueColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // User info and Share button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/profile1.jpg'),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Alexa Hales',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: mobileBlackColor,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mobileBlueColor,
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'Share',
                    style: TextStyle(color: mobileBackgroundColor),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Text input
            Container(
              height: 120,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration.collapsed(
                  hintText: "What's on your mind ?",
                ),
              ),
            ),

            SizedBox(height: 16),

            // Enable discussion and Add button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: mobileBlueColor,
                    side: BorderSide(color: mobileBlueColor),
                    shape: StadiumBorder(),
                  ),
                  child: Text('Enable Discussion'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mobileBlueColor,
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(color: mobileBackgroundColor),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Image Placeholder
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.camera_alt, size: 40, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Create',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),*/
    );
  }
}
