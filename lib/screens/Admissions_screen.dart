import 'package:flutter/material.dart';

class AdmissionsScreen extends StatelessWidget {
  const AdmissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admissions Information'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Admissions Requirements:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'To be eligible for admission to an award program an applicant must:satisfy any prerequisite requirements,satisfy any program-specific selection criteria and complete the application process. ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'An applicant seeking admission to a program at the University must submit an application as published on the Bottega university website.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Application Procedures:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'to initiate the process of admission. ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Tuition Fees & Financial Aid:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'All Bottega university students are eligible for need-based financial aid. Our need-based financial aid is awarded to students who can demonstrate financial need for assistance with educational costs.  Many of our students are awarded a financial package that covers a substantial fraction of the cost of attendance. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
