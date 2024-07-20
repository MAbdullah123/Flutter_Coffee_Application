import 'package:flutter/material.dart';
import 'package:flutter_application_coffee_app/info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black87.withOpacity(0.6),
          ),
          Positioned(
            bottom: 250, // Adjust the value to set the vertical position
            child: Image.asset(
              'assets/img1.png',
              width: 400,
              height: 450,
            ),
          ),
          Positioned(
            right: 80,
            bottom: 350, // Adjust the value to set the vertical position
            child: Text(
              'Magic Coffee',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(
                  bottom: 20), // Add some bottom margin if needed
              width: 250, // Set the width
              height: 100, // Set the height
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Make the container circular
                border: Border.all(
                  color: Colors.white, // Set the border color to white
                  width: 2.0, // Set the border width
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const info()),
                  );
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 35,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(206, 61, 63, 64),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    CircleBorder(),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(50, 50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
