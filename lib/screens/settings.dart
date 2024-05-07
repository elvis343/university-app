import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkModeEnabled = false;
  int _notificationFrequencyIndex = 0;
  List<String> _notificationFrequencies = ['Daily', 'Weekly', 'Monthly'];
  bool _locationAccessEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: Text('Dark Mode'),
            value: _darkModeEnabled,
            onChanged: (value) {
              setState(() {
                _darkModeEnabled = value;
                // Implement logic to toggle dark mode here
              });
            },
          ),
          ListTile(
            title: Text('Notification Frequency'),
            trailing: DropdownButton<int>(
              value: _notificationFrequencyIndex,
              onChanged: (value) {
                setState(() {
                  _notificationFrequencyIndex = value!;
                  // Implement logic to update notification frequency here
                });
              },
              items: _notificationFrequencies.map((String frequency) {
                return DropdownMenuItem<int>(
                  value: _notificationFrequencies.indexOf(frequency),
                  child: Text(frequency),
                );
              }).toList(),
            ),
          ),
          ListTile(
            title: Text('Location Access'),
            subtitle: Text(_getLocationAccessStatus()), // Display location access status
            onTap: () {
              // Implement navigation to location settings screen
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text('Feedback'),
            onTap: () {
              // Implement logic to navigate to feedback form
            },
            trailing: Icon(Icons.feedback),
          ),
          ListTile(
            title: Text('Rate Us'),
            onTap: () {
              // Implement logic to navigate to app store for rating
            },
            trailing: Icon(Icons.star),
          ),
        ],
      ),
    );
  }

  String _getLocationAccessStatus() {
    return _locationAccessEnabled ? 'Location Access Enabled' : 'Location Access Disabled';
  }
}