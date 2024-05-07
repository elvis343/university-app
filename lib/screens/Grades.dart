// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:university_app/screens/Login.dart'; // Import the Login screen if not already imported

// Class to represent a transcript entry
class TranscriptEntry {
  final String courseModule;
  final String courseName;
  final String numberOfECTSCredits;
  final String averageGrade;
  final String date;
  final String examiner;

  TranscriptEntry({
    required this.courseModule,
    required this.courseName,
    required this.numberOfECTSCredits,
    required this.averageGrade,
    required this.date,
    required this.examiner,
  });
}

class Grades extends StatelessWidget {
  Grades({Key? key}) : super(key: key);

  // Sample transcript data
  final List<TranscriptEntry> transcript = [
    TranscriptEntry(
      courseModule: 'XYZ0001',
      courseName: 'Course Module 1',
      numberOfECTSCredits: '5.00',
      averageGrade: '5.00',
      date: 'Date',
      examiner: 'Examiner',
    ),
    TranscriptEntry(
      courseModule: 'XYZ0002',
      courseName: 'Course Module 2',
      numberOfECTSCredits: '5.00',
      averageGrade: '5.00',
      date: 'Date',
      examiner: 'Examiner',
    ),
    TranscriptEntry(
      courseModule: 'XYZ0003',
      courseName: 'Course Module 3',
      numberOfECTSCredits: '7.00',
      averageGrade: '8.00',
      date: 'Date',
      examiner: 'Examiner',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Grades"),
        backgroundColor: Colors.black,
        centerTitle: false,
        actions: <Widget>[
          PopupMenuButton(
            icon: const Icon(Icons.menu),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: const [
                    Icon(Icons.settings, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Settings'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: const [
                    Icon(Icons.notifications, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Notifications'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: const [
                    Icon(Icons.logout, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Logout'),
                  ],
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(), // Assuming Login is defined
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                'Completed Courses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 20),
              // Display transcript
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Card(
                  elevation: 4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: transcript.length,
                    itemBuilder: (context, index) {
                      final entry = transcript[index];
                      return ListTile(
                        title: Text(
                          '${entry.courseName} (${entry.courseModule})',
                          style: const TextStyle(fontSize: 18),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Number of ECTS Credits: ${entry.numberOfECTSCredits}'),
                            Text('Average Grade: ${entry.averageGrade}'),
                            Text('Date: ${entry.date}'),
                            Text('Examiner: ${entry.examiner}'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
