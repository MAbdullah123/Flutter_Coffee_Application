import 'package:flutter/material.dart';
import 'package:flutter_application_coffee_app/profile.dart';

class ordered extends StatefulWidget {
  const ordered({super.key});

  @override
  State<ordered> createState() => _orderedState();
}

class _orderedState extends State<ordered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 25,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => profile(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          // height: 400, // Increased height to better fit content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/take.png',
                width: 300,
                height: 300,
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ordered',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20), // Adjusted height
                    Text(
                      'Alex your order has been successfully placed.',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The order will be ready today',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'to 18:10 at the address',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Bradford BD1 1PR',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Submit your personal QR code',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      height: 04,
                    ),
                    Text(
                      'at a coffee chop to receive an order',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
              ), // Add some space between image and text
            ],
          ),
        ),
      ),
    );
  }
}
