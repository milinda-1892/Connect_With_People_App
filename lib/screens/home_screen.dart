import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image.asset('assets/logo.png'),
        ),
        title: Text(
          'Home',
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
      body: ListView(
        children: [
          PostCard(
            name: 'Alexa Hales',
            role: 'Traveller',
            time: '1 day ago',
            caption: 'Catching flights, not feelings 🛫🌍',
            image: 'assets/wall1.jpg', // Replace with your image
            avatar: 'assets/profile1.jpg',
          ),
          PostCard(
            name: 'Michael Adams',
            role: 'Content writer',
            time: '2 days ago',
            caption: 'The sun is falling, ocean is crawling.......... :)',
            image: 'assets/wall2.jpg',
            avatar: 'assets/profile2.jpg',
          ),
        ],
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mobileBackgroundColor,
        currentIndex: 0,

        selectedItemColor: secondaryColor,
        unselectedItemColor: mobileBlueColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),*/
    );
  }
}

class PostCard extends StatelessWidget {
  final String name;
  final String role;
  final String time;
  final String caption;
  final String image;
  final String avatar;

  const PostCard({
    required this.name,
    required this.role,
    required this.time,
    required this.caption,
    required this.image,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 24, backgroundImage: AssetImage(avatar)),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mobileBlackColor,
                    ),
                  ),
                  Text(
                    role,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: secondaryColor,
                      fontSize: 12,
                      //decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.favorite_border, color: mobileBlueColor),
              Icon(Icons.share, color: mobileBlueColor), // Center icon
              Icon(Icons.comment, color: mobileBlueColor),
            ],
          ),

          
          if (caption.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(caption),
            ),
          if (time.isNotEmpty)
            Text(time, style: TextStyle(color: secondaryColor, fontSize: 12)),
        ],
      ),
    );
  }
}
