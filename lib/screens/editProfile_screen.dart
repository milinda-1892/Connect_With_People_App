import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/profile_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/main.dart';

class EditProfileScreen extends StatelessWidget {
  final TextStyle labelStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  InputDecoration inputDecoration(String label, {String? hintText}) {
    return InputDecoration(
      labelText: label,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.blue),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.blue),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: mobileBlueColor, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: mobileBlueColor), // Back icon color
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: mobileBlueColor),
            onPressed: () {
              // Save function
              Navigator.pop(context); // Close EditProfileScreen
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 53,
                    backgroundColor: mobileBlueColor,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/avatar1.jpg'),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: mobileBackgroundColor,
                      child: Icon(Icons.add, color: mobileBlueColor, size: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              TextField(
                decoration: inputDecoration('Username'),
                controller: TextEditingController(text: 'Alex Hales'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration(
                  'Email',
                  hintText: 'example@gmail.com',
                ),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration(
                  'Phone No',
                  hintText: '+94********',
                ),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration('Bio', hintText: 'Enter your bio'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration(
                  'Birthday',
                  hintText: '__ / __ / ____',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
