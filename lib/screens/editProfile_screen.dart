import 'package:flutter/material.dart';


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
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/logo.png'), // Your logo
            backgroundColor: Colors.transparent,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          )
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
                    radius: 55,
                    backgroundColor: Colors.blue.shade100,
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
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
              TextField(
                decoration: inputDecoration('Username'),
                controller: TextEditingController(text: 'Alex Hales'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration('Email', hintText: 'example@gmail.com'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration('Phone No', hintText: '+94********'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration('Bio', hintText: 'Enter your bio'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: inputDecoration('Birthday', hintText: '__ / __ / ____'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 4,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
