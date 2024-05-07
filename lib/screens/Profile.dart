import 'package:flutter/material.dart';
import 'package:university_app/screens/Login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _highSchoolController = TextEditingController();
  TextEditingController _courseController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Info"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.menu),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.settings, color: Colors.black),
                    const SizedBox(width: 10),
                    const Text('Settings'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.notifications, color: Colors.black),
                    const SizedBox(width: 10),
                    const Text('Notifications'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.logout, color: Colors.black),
                    const SizedBox(width: 10),
                    const Text('Logout'),
                  ],
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Edit Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Home Address'),
            ),
            TextFormField(
              controller: _highSchoolController,
              decoration: InputDecoration(labelText: 'High School'),
            ),
            TextFormField(
              controller: _courseController,
              decoration: InputDecoration(labelText: 'Course'),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveProfileChanges,
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveProfileChanges() {
    // Perform validation or any other necessary checks here

    // Show a confirmation message to the user
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Profile updated successfully')),
    );

    // Navigate back to the previous screen
    Navigator.pop(context);
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _nameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    _highSchoolController.dispose();
    _courseController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
