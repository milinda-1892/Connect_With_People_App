//import 'package:app/fonts/build_stat.dart';
import 'package:app/screens/editProfile_screen.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> images = [
    'https://images.unsplash.com/photo-1743883325575-783014a39a8b?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1672329275106-073b5493c00f?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1744039016195-836bfc89659b?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1744487347424-21fd1d173b7f?q=80&w=1064&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1744315900478-fa44dc6a4e89?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyfHx8ZW58MHx8fHx8',
    'https://images.unsplash.com/photo-1744424705160-b12b262cda22?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8',
    'https://images.unsplash.com/photo-1744140390489-fc279d403107?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8',
    'https://images.unsplash.com/photo-1744039016195-836bfc89659b?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw2fHx8ZW58MHx8fHx8',
    'https://images.unsplash.com/photo-1744360817731-c02ab9b95854?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8',
    'https://images.unsplash.com/photo-1744723852515-84e56b8bb04d?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1744566917600-57a72a02a6d8?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxNnx8fGVufDB8fHx8fA%3D%3D',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png'),
        ),
        title: Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: mobileBlueColor),
        ),
        centerTitle: true,
        backgroundColor: mobileBackgroundColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.edit, color: mobileBlueColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(height: MediaQuery.of(context).size.height * 0.05),
                SizedBox(height: 10),
                //backgr
                CircleAvatar(
                  radius: 53,
                  backgroundColor: mobileBlueColor,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/men/11.jpg',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Alex Hales',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'Traveler',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
                ),
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStat('3', 'Posts'),
                    _buildStat('1', 'Polls'),
                    _buildStat('5', 'Followers'),
                  ],
                ),

                SizedBox(height: 15),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mobileBackgroundColor,
                      foregroundColor: mobileBlackColor,
                      side: BorderSide(width: 3, color: mobileBlueColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Log out'),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(images[index], fit: BoxFit.cover),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mobileBackgroundColor,
        currentIndex: 4,

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

  Widget _buildStat(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
