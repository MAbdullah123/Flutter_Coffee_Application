import 'package:flutter/material.dart';
import 'package:flutter_application_coffee_app/history.dart';
import 'package:flutter_application_coffee_app/ongoing.dart';
import 'package:flutter_application_coffee_app/radeem.dart';
import 'package:flutter_application_coffee_app/rewards.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profile')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/profile_image.png'), // Replace with your image asset
              ),
              SizedBox(height: 20),
              Text(
                'Alex Johnson',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'alex.johnson@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 5),
              Text(
                '+1234567890',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 30),
              Divider(),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Rewards'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => rewards(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.redeem),
                title: Text('Redeem'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => radeem(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.pending_actions),
                title: Text('Ongoing Orders'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ongoing(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('History of Orders'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => history(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to edit profile page
                },
                child: Text(
                  'Edit profile',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: const Color.fromRGBO(50, 74, 89, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
