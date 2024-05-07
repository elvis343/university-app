
import 'package:flutter/material.dart';
//import 'package:flutter/Login.dart';

// ignore: camel_case_types
class About_Us extends StatelessWidget {
  const About_Us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
             image: DecorationImage(
             image: AssetImage('Assets/images/university_logo.PNG'),
             fit: BoxFit.cover, 
             ),
                borderRadius: BorderRadius.circular(80),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            
            const Text(
              'Botegga university',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'At Bottega university, we are guided by core values of integrity, respect, diversity, and academic freedom. '
              'We believe in fostering a culture of collaboration, critical thinking, and ethical leadership to nurture. '
              'well-rounded individuals who are prepared to tackle the challenges of the future.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 20.0),
            
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+0712453675/+20415624728'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('info@Bottegauniversity.com'),
            ),
            
          ],
        ),
      ),
    );
  }
}
