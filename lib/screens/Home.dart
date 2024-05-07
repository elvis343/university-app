import 'package:flutter/material.dart';
import 'package:university_app/screens/Login.dart'; 
import 'package:university_app/screens/Settings.dart'; 
import 'package:university_app/screens/Admissions_Screen.dart'; 

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 141, 141),
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.black,
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('No new notifications'),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logout functionality
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Icon(
                  Icons.home,
                  size: 50,
                  color: Color.fromARGB(255, 11, 226, 162),
                ),
              ),
              const SizedBox(height: 20),
              
              Text(
                'Welcome Back, User!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Explore'),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Search'),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  // Navigate to AdmissionsScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdmissionsScreen()),
                  );
                },
                child: Text('Admissions Information'),
              ),
              const SizedBox(height: 20),
              // Events Calendar
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Events Calendar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
