import 'package:flutter/material.dart';
import 'package:university_app/screens/Login.dart'; // Import the Login screen

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of courses
    List<String> courses = [
      'Master of Arts in Biblical and Theological Studies',
      'Master of Arts in Leadership',
      'Master of Arts in Missiology',
      'Master of Arts Pastoral Theology',
      'Master of Business Administration',
      'Master of Public Health',
      'Bachelor of Arts in Counselling Psychology',
      'Bachelor of Arts in Development Studies',
      'Bachelor of Business Administration',
      'Bachelor of Theology',
      'Master of Arts in Biblical Translation Studies',
      'Master of Arts in Christian Education',
      'Master of Arts in Church History',
      'Master of Arts in Mission Studies',
      'Master of Arts in Pastoral Ministries',
      'Master of Divinity',
      'Master of Theology',
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 235, 234),
      appBar: AppBar(
        title: const Text("Course"),
        backgroundColor: Color.fromARGB(255, 27, 160, 1),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.settings, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Settings'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: const Row(
                  children: [
                    Icon(Icons.logout, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Logout'),
                  ],
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(), // Navigate to Login screen
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Courses',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            // Course list
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: courses.map((course) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Text(
                      course,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle course selection
                    },
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
